module ARM_SOC (
   input  wire          CLK,                  // Oscillator
   input  wire          RESET,                // Reset

   // Debug
   input  wire          TDI,                  // JTAG TDI
   input  wire          TCK,                  // SWD Clk / JTAG TCK
   inout  wire          TMS,                  // SWD I/O / JTAG TMS
   output wire          TDO,                  // SWV     / JTAG TDO
	
	output wire [7:0]		LED,
	input wire [7:0]		BUTTON
   );

   wire          fclk;                                // Free running clock
   wire          reset_n = RESET;                     // Reset
   wire  [239:0] irq = {240'b0000_0000_0000_0000};    // Interrupts

   /////////////////////////////////////////////////////////////////////////////
   // Clock and Reset
   /////////////////////////////////////////////////////////////////////////////

   // Clock divider, divide the frequency by 4, hence less time constraint
   /*reg     [1:0] clk_div;
   always @(posedge CLK or negedge reset_n)
   begin
      if (!reset_n)
         clk_div <= 0;
      else
      begin
         if (clk_div == 3)
            clk_div <= 0;
         else
            clk_div <= clk_div + 1;
      end
   end*/

   // Global clock buffer
   BUFG BUFG_CLK (
      .fclk(fclk),
      .CLK(CLK),
		.reset_n(reset_n)
   );

   // System level reset
   wire   lockup;             // Lockup signal from CPU
   wire   sys_reset_req;      // System reset request from CPU or debug host
   reg    reg_sys_rst_n;
   always @(posedge fclk or negedge reset_n)
   begin
      if (!reset_n)
         reg_sys_rst_n <= 1'b0;
      else
         if ( sys_reset_req | lockup )
            reg_sys_rst_n <= 1'b0;
         else
            reg_sys_rst_n <= 1'b1;
   end

   /////////////////////////////////////////////////////////////////////////////
   // Connect Code Bus to ROM
   /////////////////////////////////////////////////////////////////////////////

   // CPU I-Code bus
   wire   [31:0] haddri;
   wire    [1:0] htransi;
   wire    [2:0] hsizei;
   wire    [2:0] hbursti;
   wire    [3:0] hproti;
   wire    [1:0] memattri;
   wire   [31:0] hrdatai;
   wire          hreadyi;
   wire    [1:0] hrespi = 2'b00;      // System generates no error response;

   // CPU D-Code bus
   wire   [31:0] haddrd;
   wire    [1:0] htransd;
   wire    [1:0] hmasterd;
   wire    [2:0] hsized;
   wire    [2:0] hburstd;
   wire    [3:0] hprotd;
   wire    [1:0] memattrd;
   wire   [31:0] hwdatad;
   wire          hwrited;
   wire          exreqd;
   wire   [31:0] hrdatad;
   wire          hreadyd;
   wire    [1:0] hrespd = 2'b00;      // System generates no error response;
   wire          exrespd = 1'b0;

   // Code bus mux
   wire   [31:0] haddrc     = htransd[1] ? haddrd  : haddri;
   wire    [2:0] hburstc    = htransd[1] ? hburstd : hbursti;
   wire          hmastlockc = 1'b0;
   wire    [3:0] hprotc     = htransd[1] ? hprotd  : hproti;
   wire    [2:0] hsizec     = htransd[1] ? hsized  : hsizei;
   wire    [1:0] htransc    = htransd[1] ? htransd : htransi;
   wire   [31:0] hwdatac    = hwdatad;
   wire          hwritec    = htransd[1] ? hwrited : 1'b0;
   wire   [31:0] hrdatac; 
   wire          hreadyc; 
   assign        hreadyi    = hreadyc;
   assign        hreadyd    = hreadyc;
   assign        hrdatai    = hrdatac;
   assign        hrdatad    = hrdatac;

   // AHB-Lite ROM
   AHB2MEM uAHB2ROM (
      .HSEL(1'b1),
      .HCLK(fclk), 
      .HRESETn(reg_sys_rst_n), 
      .HREADY(hreadyc),     
      .HADDR(haddrc),
      .HTRANS(htransc), 
      .HWRITE(hwritec),
      .HSIZE(hsizec),
      .HWDATA(hwdatac), 
      .HRDATA(hrdatac), 
      .HREADYOUT(hreadyc)
   );

   /////////////////////////////////////////////////////////////////////////////
   // Connect System Bus to RAM and Peripherals
   /////////////////////////////////////////////////////////////////////////////

   // CPU System bus
   wire   [31:0] haddrs; 
   wire    [2:0] hbursts; 
   wire          hmastlocks; 
   wire    [3:0] hprots; 
   wire    [2:0] hsizes; 
   wire    [1:0] htranss; 
   wire   [31:0] hwdatas; 
   wire          hwrites; 
   wire   [31:0] hrdatas; 
   wire          hreadys; 
   wire    [1:0] hresps = 2'b00;      // System generates no error response
   wire          exresps = 1'b0;

	//AHB Slave HEL signal
	wire 			 HSEL_RAM;
	wire 			 HSEL_LED;
	wire 			 HSEL_BUTTON;
	
	//Slave HRDATA signal
	wire	[31:0] HRDATA_RAM;
	wire	[31:0] HRDATA_LED;
	wire	[31:0] HRDATA_BUTTON;
	
	//Slave HREADYOUT signal
	wire   		 HREADYOUT_RAM;
	wire   		 HREADYOUT_LED;
	wire   		 HREADYOUT_BUTTON;
	
	//AHB MUX_SEL signal
	wire  [3:0]  MUX_SEL;
	
	//AHB Decoder
	AHBDCD uAHBDCD (
	.HADDR(haddrs[31:0]),
	 
	.HSEL_S0(HSEL_RAM),
	.HSEL_S1(HSEL_LED),
	.HSEL_S2(HSEL_BUTTON),
	.HSEL_S3(),
	.HSEL_S4(),
	.HSEL_S5(),
	.HSEL_S6(),
	.HSEL_S7(),
	.HSEL_S8(),
	.HSEL_S9(),
	.HSEL_NOMAP(HSEL_NOMAP),
	 
	.MUX_SEL(MUX_SEL[3:0])
);
	
	//AHB MUX
	AHBMUX uAHBMUX (
	.HCLK(fclk),
	.HRESETn(reg_sys_rst_n),
	.MUX_SEL(MUX_SEL[3:0]),
	 
	.HRDATA_S0(HRDATA_RAM),
	.HRDATA_S1(HRDATA_LED),
	.HRDATA_S2(HRDATA_BUTTON),
	.HRDATA_S3(),
	.HRDATA_S4(),
	.HRDATA_S5(),
	.HRDATA_S6(),
	.HRDATA_S7(),
	.HRDATA_S8(),
	.HRDATA_S9(),
	.HRDATA_NOMAP(32'hDEADBEEF),
	 
	.HREADYOUT_S0(HREADYOUT_RAM),
	.HREADYOUT_S1(HREADYOUT_LED),
	.HREADYOUT_S2(HREADYOUT_BUTTON),
	.HREADYOUT_S3(1'b1),
	.HREADYOUT_S4(1'b1),
	.HREADYOUT_S5(1'b1),
	.HREADYOUT_S6(1'b1),
	.HREADYOUT_S7(1'b1),
	.HREADYOUT_S8(1'b1),
	.HREADYOUT_S9(1'b1),
	.HREADYOUT_NOMAP(1'b1),
    
	.HRDATA(hrdatas[31:0]),
	.HREADY(hreadys)
);


	//AHB TO LED
	AHB2LED uAHB2LED (
	//AHBLITE Signals
	.HSEL(HSEL_LED),
	.HCLK(fclk), 
	.HRESETn(reg_sys_rst_n), 
	.HREADY(hreadys),     
	.HADDR(haddrs),
	.HTRANS(htranss[1:0]), 
	.HWRITE(hwrites),
	.HSIZE(hsizes),
	.HWDATA(hwdatas[31:0]), 
	
	.HRDATA(HRDATA_LED), 
	.HREADYOUT(HREADYOUT_LED),
	//Sideband Signals
	.LED(LED[7:0])
);

//AHB TO BUTTON
	AHB2BUTTON uAHB2BUTTON (
	//AHBLITE Signals
	.HSEL(HSEL_BUTTON),
	.HCLK(fclk), 
	.HRESETn(reg_sys_rst_n), 
	.HREADY(hreadys),     
	.HADDR(haddrs),
	.HTRANS(htranss[1:0]), 
	.HWRITE(hwrites),
	.HSIZE(hsizes),
	.HWDATA(hwdatas[31:0]), 
	
	.HRDATA(HRDATA_BUTTON), 
	.HREADYOUT(HREADYOUT_BUTTON),
	//Sideband Signals
	.BUTTON(BUTTON[7:0])
);

		
   // AHB-Lite RAM
   AHB2MEM uAHB2RAM (
      .HSEL(HSEL_RAM),
      .HCLK(fclk), 
      .HRESETn(reg_sys_rst_n), 
      .HREADY(hreadys),     
      .HADDR(haddrs),
      .HTRANS(htranss), 
      .HWRITE(hwrites),
      .HSIZE(hsizes),
      .HWDATA(hwdatas), 
      .HRDATA(HRDATA_RAM), 
      .HREADYOUT(HREADYOUT_RAM)
   );

   /////////////////////////////////////////////////////////////////////////////
   // Debug Signals
   /////////////////////////////////////////////////////////////////////////////

   // Debug signals (TDO pin is used for SWV unless JTAG mode is active)
   wire          dbg_tdo;                    // SWV / JTAG TDO
   wire          dbg_tdo_nen;                // SWV / JTAG TDO tristate enable (active low)
   wire          dbg_swdo;                   // SWD I/O 3-state output
   wire          dbg_swdo_en;                // SWD I/O 3-state enable
   wire          dbg_jtag_nsw;               // SWD in JTAG state (HIGH)
   wire          dbg_swo;                    // Serial wire viewer/output
   wire          tdo_enable     = !dbg_tdo_nen | !dbg_jtag_nsw;
   wire          tdo_tms        = dbg_jtag_nsw         ? dbg_tdo    : dbg_swo;
   assign        TMS            = dbg_swdo_en          ? dbg_swdo   : 1'bz;
   assign        TDO            = tdo_enable           ? tdo_tms    : 1'bz;

   // CoreSight requires a loopback from REQ to ACK for a minimal
   // debug power control implementation
   wire          cpu0cdbgpwrupreq;          // Debug Power Domain up request
   wire          cpu0cdbgpwrupack;          // Debug Power Domain up acknowledge
   assign        cpu0cdbgpwrupack = cpu0cdbgpwrupreq;

   /////////////////////////////////////////////////////////////////////////////
   // Cortex-M0 Core
   /////////////////////////////////////////////////////////////////////////////

   // DesignStart simplified integration level
   CORTEXM3INTEGRATIONDS u_CORTEXM3INTEGRATION (
      // Inputs
      .ISOLATEn       (1'b1),               // Active low to isolate core power domain
      .RETAINn        (1'b1),               // Active low to retain core state during power-down

      // Resets
      .PORESETn       (reset_n),            // Power on reset - reset processor and debugSynchronous to FCLK and HCLK
      .SYSRESETn      (reg_sys_rst_n),      // System reset   - reset processor onlySynchronous to FCLK and HCLK
      .RSTBYPASS      (1'b0),               // Reset bypass - active high to disable internal generated reset for testing (e.gATPG)
      .CGBYPASS       (1'b0),               // Clock gating bypass - active high to disable internal clock gating for testing
      .SE             (1'b0),               // DFT is tied off in this example

      // Clocks
      .FCLK           (fclk),               // Free running clock - NVIC, SysTick, debug
      .HCLK           (fclk),               // System clock - AHB, processor
                                            // it is separated so that it can be gated off when no debugger is attached
      .TRACECLKIN     (fclk),               // Trace clock input.  REVISIT, does it want its own named signal as an input?
      // SysTick
      .STCLK          (1'b1),               // External reference clock for SysTick (Not really a clock, it is sampled by DFF)
                                            // Must be synchronous to FCLK or tied when no alternative clock source
      .STCALIB        ({1'b1,               // No alternative clock source
                        1'b0,               // Exact multiple of 10ms from FCLK
                        24'h003D08F}),      // Calibration value for SysTick for 25 MHz source

      .AUXFAULT       ({32{1'b0}}),         // Auxiliary Fault Status Register inputs: Connect to fault status generating logic
                                            // if required. Result appears in the Auxiliary Fault Status Register at address
                                            // 0xE000ED3C. A one-cycle pulse of information results in the information being stored
                                            // in the corresponding bit until a write-clear occurs.

      // Configuration - system
      .BIGEND         (1'b0),               // Select when exiting system reset - Peripherals in this system do not support BIGEND
      .DNOTITRANS     (1'b1),               // I-CODE & D-CODE merging configuration.
                                            // This disable I-CODE from generating a transfer when D-CODE bus need a transfer
                                            // Must be HIGH when using the Designstart system

      // SWJDAP signal for single processor mode
      .nTRST          (1'b1),               // JTAG TAP Reset
      .SWCLKTCK       (TCK),                // SW/JTAG Clock
      .SWDITMS        (TMS),                // SW Debug Data In / JTAG Test Mode Select
      .TDI            (TDI),                // JTAG TAP Data In / Alternative input function
      .CDBGPWRUPACK   (cpu0cdbgpwrupack),   // Debug Power Domain up acknowledge.

      // IRQs
      .INTISR         (irq[239:0]),         // Interrupts
      .INTNMI         (1'b0),               // Non-maskable Interrupt

      // I-CODE Bus
      .HREADYI        (hreadyi),            // I-CODE bus ready
      .HRDATAI        (hrdatai),            // I-CODE bus read data
      .HRESPI         (hrespi),             // I-CODE bus response
      .IFLUSH         (1'b0),               // Prefetch flush - fixed when using the Designstart system

      // D-CODE Bus
      .HREADYD        (hreadyd),            // D-CODE bus ready
      .HRDATAD        (hrdatad),            // D-CODE bus read data
      .HRESPD         (hrespd),             // D-CODE bus response
      .EXRESPD        (exrespd),            // D-CODE bus exclusive response

      // System Bus
      .HREADYS        (hreadys),            // System bus ready
      .HRDATAS        (hrdatas),            // System bus read data
      .HRESPS         (hresps),             // System bus response
      .EXRESPS        (exresps),            // System bus exclusive response

      // Sleep
      .RXEV           (1'b0),               // Receive Event input
      .SLEEPHOLDREQn  (1'b1),               // Extend Sleep request

      // External Debug Request
      .EDBGRQ         (1'b0),               // External Debug request to CPU
      .DBGRESTART     (1'b0),               // Debug Restart request - Not needed in a single CPU system

      // DAP HMASTER override
      .FIXMASTERTYPE  (1'b0),               // Tie High to override HMASTER for AHB-AP accesses

      // WIC
      .WICENREQ       (1'b0),               // Active HIGH request for deep sleep to be WIC-based deep sleep
                                            // This should be driven from a PMU

      // Timestamp interface
      .TSVALUEB       ({48{1'b0}}),         // Binary coded timestamp value for trace - Trace is not used in this course
      // Timestamp clock ratio change is rarely used

      // Configuration - debug
      .DBGEN          (1'b1),               // Halting Debug Enable
      .NIDEN          (1'b1),               // Non-invasive debug enable for ETM
      .MPUDISABLE     (1'b0),               // Tie high to emulate processor with no MPU

      // SWJDAP signal for single processor mode
      .TDO            (dbg_tdo),            // JTAG TAP Data Out // REVISIT needs mux for SWV
      .nTDOEN         (dbg_tdo_nen),        // TDO enable
      .CDBGPWRUPREQ   (cpu0cdbgpwrupreq),   // Debug Power Domain up request
      .SWDO           (dbg_swdo),           // SW Data Out
      .SWDOEN         (dbg_swdo_en),        // SW Data Out Enable
      .JTAGNSW        (dbg_jtag_nsw),       // JTAG/not Serial Wire Mode

      // Single Wire Viewer
      .SWV            (dbg_swo),            // SingleWire Viewer Data

      // TPIU signals for single processor mode
      .TRACECLK       (),                   // TRACECLK output
      .TRACEDATA      (),                   // Trace Data

      // CoreSight AHB Trace Macrocell (HTM) bus capture interface
      // Connected here for visibility but usually not used in SoC.
      .HTMDHADDR      (),                   // HTM data HADDR
      .HTMDHTRANS     (),                   // HTM data HTRANS
      .HTMDHSIZE      (),                   // HTM data HSIZE
      .HTMDHBURST     (),                   // HTM data HBURST
      .HTMDHPROT      (),                   // HTM data HPROT
      .HTMDHWDATA     (),                   // HTM data HWDATA
      .HTMDHWRITE     (),                   // HTM data HWRITE
      .HTMDHRDATA     (),                   // HTM data HRDATA
      .HTMDHREADY     (),                   // HTM data HREADY
      .HTMDHRESP      (),                   // HTM data HRESP

      // AHB I-Code bus
      .HADDRI         (haddri),             // I-CODE bus address
      .HTRANSI        (htransi),            // I-CODE bus transfer type
      .HSIZEI         (hsizei),             // I-CODE bus transfer size
      .HBURSTI        (hbursti),            // I-CODE bus burst length
      .HPROTI         (hproti),             // i-code bus protection
      .MEMATTRI       (memattri),           // I-CODE bus memory attributes

      // AHB D-Code bus
      .HADDRD         (haddrd),             // D-CODE bus address
      .HTRANSD        (htransd),            // D-CODE bus transfer type
      .HSIZED         (hsized),             // D-CODE bus transfer size
      .HWRITED        (hwrited),            // D-CODE bus write not read
      .HBURSTD        (hburstd),            // D-CODE bus burst length
      .HPROTD         (hprotd),             // D-CODE bus protection
      .MEMATTRD       (memattrd),           // D-CODE bus memory attributes
      .HMASTERD       (hmasterd),           // D-CODE bus master
      .HWDATAD        (hwdatad),            // D-CODE bus write data
      .EXREQD         (exreqd),             // D-CODE bus exclusive request

      // AHB System bus
      .HADDRS         (haddrs),             // System bus address
      .HTRANSS        (htranss),            // System bus transfer type
      .HSIZES         (hsizes),             // System bus transfer size
      .HWRITES        (hwrites),            // System bus write not read
      .HBURSTS        (hbursts),            // System bus burst length
      .HPROTS         (hprots),             // System bus protection
      .HMASTLOCKS     (hmastlocks),         // System bus lock
      .MEMATTRS       (),                   // System bus memory attributes
      .HMASTERS       (),                   // System bus master
      .HWDATAS        (hwdatas),            // System bus write data
      .EXREQS         (),                   // System bus exclusive request

      // Status
      .BRCHSTAT       (),                   // Branch State
      .HALTED         (),                   // The processor is halted
      .DBGRESTARTED   (),                   // Debug Restart interface handshaking
      .LOCKUP         (lockup),             // The processor is locked up
      .SLEEPING       (),                   // The processor is in sleep mdoe (sleep/deep sleep)
      .SLEEPDEEP      (),                   // The processor is in deep sleep mode
      .SLEEPHOLDACKn  (),                   // Acknowledge for SLEEPHOLDREQn
      .ETMINTNUM      (),                   // Current exception number
      .ETMINTSTAT     (),                   // Exception/Interrupt activation status
      .CURRPRI        (),                   // Current exception priority
      .TRCENA         (),                   // Trace Enable

      // Reset Request
      .SYSRESETREQ    (sys_reset_req),      // System Reset Request

      // Events
      .TXEV           (),                   // Transmit Event

      // Clock gating control
      .GATEHCLK       (),                   // when high, HCLK can be turned off

      .WAKEUP         (),                   // Active HIGH signal from WIC to the PMU that indicates a wake-up event has
                                            // occurred and the system requires clocks and power
      .WICENACK       ()                    // Acknowledge for WICENREQ - WIC operation deep sleep mode
   );

endmodule

////////////////////////////////////////////////////////////////////////////////
// AHB-Lite Memory Module
////////////////////////////////////////////////////////////////////////////////
module AHB2MEM
   #(parameter MEMWIDTH = 15)               // Size = 32KB
   (
   input wire           HSEL,
   input wire           HCLK,
   input wire           HRESETn,
   input wire           HREADY,
   input wire    [31:0] HADDR,
   input wire     [1:0] HTRANS,
   input wire           HWRITE,
   input wire     [2:0] HSIZE,
   input wire    [31:0] HWDATA,
   output wire          HREADYOUT,
   output reg    [31:0] HRDATA
   );

   assign HREADYOUT = 1'b1; // Always ready

   // Memory Array
   reg  [31:0] memory[0:(2**(MEMWIDTH-2)-1)];

   // Registers to store Adress Phase Signals
   reg  [31:0] hwdata_mask;
   reg         we;
   reg  [31:0] buf_hwaddr;

   // Sample the Address Phase   
   always @(posedge HCLK or negedge HRESETn)
   begin
      if(!HRESETn)
      begin
         we <= 1'b0;
         buf_hwaddr <= 32'h0;
      end
      else
         if(HREADY)
         begin
            we <= HSEL & HWRITE & HTRANS[1];
            buf_hwaddr <= HADDR;
   
            casez (HSIZE[1:0])
               2'b1?: hwdata_mask <=  32'hFFFFFFFF;                        // Word write
               2'b01: hwdata_mask <= (32'h0000FFFF << (16 * HADDR[1]));    // Halfword write
               2'b00: hwdata_mask <= (32'h000000FF << (8 * HADDR[1:0]));   // Byte write
            endcase
          end
   end
   
   // Read and Write Memory
   always @ (posedge HCLK)
   begin
      if(we)
         memory[buf_hwaddr[MEMWIDTH:2]] <= (HWDATA & hwdata_mask) | (HRDATA & ~hwdata_mask);
      HRDATA = memory[HADDR[MEMWIDTH:2]];
   end

endmodule
