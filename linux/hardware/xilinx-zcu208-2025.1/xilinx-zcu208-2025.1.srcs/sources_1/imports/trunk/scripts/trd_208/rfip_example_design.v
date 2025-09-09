//----------------------------------------------------------------------------
// Title : Example Design Top Level
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
// File : rfip_example_design.v
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
//
//----------------------------------------------------------------------------

`timescale 1ns / 1ps
(* DowngradeIPIdentifiedWarnings = "yes" *)
module rfip_example_design (
  // External SYSREF input
  input  wire       sysref_in_p,
  input  wire       sysref_in_n,

  `ifdef MTS
  input  wire       pl_clk_p,
  input  wire       pl_clk_n,
  input  wire       pl_sysref_p,
  input  wire       pl_sysref_n,
  `endif
  `ifdef DDR_DAC
  output [16:0]     c0_ddr4_adr,
  output [1:0]      c0_ddr4_ba,
  output [1:0]      c0_ddr4_bg,
  output [0:0]      c0_ddr4_ck_c,
  output [0:0]      c0_ddr4_ck_t,
  output [0:0]      c0_ddr4_cke,
  output [1:0]      c0_ddr4_cs_n,
  inout  [3:0]      c0_ddr4_dm_n,
  inout  [31:0]     c0_ddr4_dq,
  inout  [3:0]      c0_ddr4_dqs_c,
  inout  [3:0]      c0_ddr4_dqs_t,
  output [0:0]      c0_ddr4_odt,
  output            c0_ddr4_act_n,
  output            c0_ddr4_reset_n,
  input             c0_sys_clk_n,
  input             c0_sys_clk_p,
  `endif
  `ifdef DDR_ADC
  output [16:0]     c1_ddr4_adr,
  output [1:0]      c1_ddr4_ba,
  output [1:0]      c1_ddr4_bg,
  output [0:0]      c1_ddr4_ck_c,
  output [0:0]      c1_ddr4_ck_t,
  output [0:0]      c1_ddr4_cke,
  output [1:0]      c1_ddr4_cs_n,
  inout  [3:0]      c1_ddr4_dm_n,
  inout  [31:0]     c1_ddr4_dq,
  inout  [3:0]      c1_ddr4_dqs_c,
  inout  [3:0]      c1_ddr4_dqs_t,
  output [0:0]      c1_ddr4_odt,
  output            c1_ddr4_act_n,
  output            c1_ddr4_reset_n,
  input             c1_sys_clk_n,
  input             c1_sys_clk_p,
  `endif
  
  output [1:0]      GPIO_0_tri_o,
  
  //input  wire       adc0_clk_p,
  //input  wire       adc0_clk_n,
  //input  wire       adc1_clk_p,
  //input  wire       adc1_clk_n,
  input  wire       adc2_clk_p,
  input  wire       adc2_clk_n,
  //input  wire       adc3_clk_p,
  //input  wire       adc3_clk_n,
  input  wire       dac0_clk_p,
  input  wire       dac0_clk_n,
  //input  wire       dac1_clk_p,
  //input  wire       dac1_clk_n,
  //input  wire       dac2_clk_p,
  //input  wire       dac2_clk_n,
  //input  wire       dac3_clk_p,
  //input  wire       dac3_clk_n,

  input  wire       vin0_01_v_n,
  input  wire       vin0_01_v_p,
  input  wire       vin0_23_v_n,
  input  wire       vin0_23_v_p,
  input  wire       vin1_01_v_n,
  input  wire       vin1_01_v_p,
  input  wire       vin1_23_v_n,
  input  wire       vin1_23_v_p,
  input  wire       vin2_01_v_n,
  input  wire       vin2_01_v_p,
  input  wire       vin2_23_v_n,
  input  wire       vin2_23_v_p,
  input  wire       vin3_01_v_n,
  input  wire       vin3_01_v_p,
  input  wire       vin3_23_v_n,
  input  wire       vin3_23_v_p,

  output            vout00_p,
  output            vout00_n,
  output            vout02_p,
  output            vout02_n,
  output            vout10_p,
  output            vout10_n,
  output            vout12_p,
  output            vout12_n,
  output            vout20_p,
  output            vout20_n,
  output            vout22_p,
  output            vout22_n,
  output            vout30_p,
  output            vout30_n,
  output            vout32_p,
  output            vout32_n
);

  wire [31:0]   s_axi_rdata_i;
  wire [31:0]   s_axi_wdata_i;
  wire          s_axi_aclk_i;
  wire          s_axi_aclk;
  wire          s_axi_aresetn;
  reg           user_sysref_adc;
  wire          m0_axis_aclk;
  reg           user_sysref_dac;
  wire          s0_axis_aclk;
  wire          pl_sysref;
  reg           pl_sysref_r;
  wire          pl_clk;

  rfdc_ex rfip_ex_i (
        `ifdef MTS
        .user_sysref_adc_0(user_sysref_adc),
        .user_sysref_dac_0(user_sysref_dac),
	    .pl_clk_adc(pl_clk),
        .pl_clk_dac(pl_clk),
        `endif   
        `ifdef DDR_DAC
        .C0_DDR4_0_0_act_n(c0_ddr4_act_n),
        .C0_DDR4_0_0_adr  (c0_ddr4_adr),
        .C0_DDR4_0_0_ba   (c0_ddr4_ba),
        .C0_DDR4_0_0_bg   (c0_ddr4_bg),
        .C0_DDR4_0_0_ck_c (c0_ddr4_ck_c),
        .C0_DDR4_0_0_ck_t (c0_ddr4_ck_t),
        .C0_DDR4_0_0_cke  (c0_ddr4_cke),
        .C0_DDR4_0_0_cs_n (c0_ddr4_cs_n),
        .C0_DDR4_0_0_dm_n (c0_ddr4_dm_n),
        .C0_DDR4_0_0_dq   (c0_ddr4_dq),
        .C0_DDR4_0_0_dqs_c(c0_ddr4_dqs_c),
        .C0_DDR4_0_0_dqs_t(c0_ddr4_dqs_t),
        .C0_DDR4_0_0_odt  (c0_ddr4_odt),
        .C0_DDR4_0_0_reset_n (c0_ddr4_reset_n),
        .C0_SYS_CLK_0_0_clk_n(c0_sys_clk_n),
        .C0_SYS_CLK_0_0_clk_p(c0_sys_clk_p),
        `endif

        `ifdef DDR_ADC
        .C1_DDR4_0_0_act_n(c1_ddr4_act_n),
        .C1_DDR4_0_0_adr  (c1_ddr4_adr),
        .C1_DDR4_0_0_ba   (c1_ddr4_ba),
        .C1_DDR4_0_0_bg   (c1_ddr4_bg),
        .C1_DDR4_0_0_ck_c (c1_ddr4_ck_c),
        .C1_DDR4_0_0_ck_t (c1_ddr4_ck_t),
        .C1_DDR4_0_0_cke  (c1_ddr4_cke),
        .C1_DDR4_0_0_cs_n (c1_ddr4_cs_n),
        .C1_DDR4_0_0_dm_n (c1_ddr4_dm_n),
        .C1_DDR4_0_0_dq   (c1_ddr4_dq),
        .C1_DDR4_0_0_dqs_c(c1_ddr4_dqs_c),
        .C1_DDR4_0_0_dqs_t(c1_ddr4_dqs_t),
        .C1_DDR4_0_0_odt  (c1_ddr4_odt),
        .C1_DDR4_0_0_reset_n (c1_ddr4_reset_n),
        .C1_SYS_CLK_0_0_clk_n(c1_sys_clk_n),
        .C1_SYS_CLK_0_0_clk_p(c1_sys_clk_p),
        `endif
        .GPIO_0_tri_o(GPIO_0_tri_o),
        //.adc0_clk_clk_p(adc0_clk_p),
        //.adc0_clk_clk_n(adc0_clk_n),
        //.adc1_clk_clk_p(adc1_clk_p),
        //.adc1_clk_clk_n(adc1_clk_n),
        .adc2_clk_clk_p(adc2_clk_p),
        .adc2_clk_clk_n(adc2_clk_n),
        //.adc3_clk_clk_p(adc3_clk_p),
        //.adc3_clk_clk_n(adc3_clk_n),
        .dac0_clk_clk_p(dac0_clk_p),
        .dac0_clk_clk_n(dac0_clk_n),
        //.dac2_clk_clk_p(dac2_clk_p),
        //.dac2_clk_clk_n(dac2_clk_n),
		.vin0_01_v_n(vin0_01_v_n)  ,
		.vin0_01_v_p(vin0_01_v_p)  ,
		.vin0_23_v_n(vin0_23_v_n)  ,
		.vin0_23_v_p(vin0_23_v_p)  ,
		.vin1_01_v_n(vin1_01_v_n)  ,
		.vin1_01_v_p(vin1_01_v_p)  ,
		.vin1_23_v_n(vin1_23_v_n)  ,
		.vin1_23_v_p(vin1_23_v_p)  ,
		.vin2_01_v_n(vin2_01_v_n)  ,
		.vin2_01_v_p(vin2_01_v_p)  ,
		.vin2_23_v_n(vin2_23_v_n)  ,
		.vin2_23_v_p(vin2_23_v_p)  ,
		.vin3_01_v_n(vin3_01_v_n)  ,
		.vin3_01_v_p(vin3_01_v_p)  ,
		.vin3_23_v_n(vin3_23_v_n)  ,
		.vin3_23_v_p(vin3_23_v_p)  ,

        .vout00_v_p(vout00_p),
        .vout00_v_n(vout00_n),
        .vout02_v_p(vout02_p),
        .vout02_v_n(vout02_n),
        .vout10_v_p(vout10_p),
        .vout10_v_n(vout10_n),
        .vout12_v_p(vout12_p),
        .vout12_v_n(vout12_n),
        .vout20_v_p(vout20_p),
        .vout20_v_n(vout20_n),
        .vout22_v_p(vout22_p),
        .vout22_v_n(vout22_n),
        .vout30_v_p(vout30_p),
        .vout30_v_n(vout30_n),
        .vout32_v_p(vout32_p),
        .vout32_v_n(vout32_n),
        .sysref_in_diff_n(sysref_in_n),
        .sysref_in_diff_p(sysref_in_p),


        .m0_axis_aclk(m0_axis_aclk),
        .m1_axis_aclk(),
        .m2_axis_aclk(),
        .m3_axis_aclk(),
        .s0_axis_aclk(s0_axis_aclk),
        .s1_axis_aclk(),

        .s2_axis_aclk(),

        .s3_axis_aclk()
        //.s_axi_aclk(s_axi_aclk_i),
        //.s_axi_aresetn(s_axi_aresetn)
        );

`ifdef MTS
        
        // Multi-tile sync logic
          IBUFDS pl_clk_i (
            .I          (pl_clk_p),
            .IB         (pl_clk_n),
            .O          (pl_clk));
        
          IBUFDS pl_sysref_i (
            .I          (pl_sysref_p),
            .IB         (pl_sysref_n),
            .O          (pl_sysref));
        
          always @(posedge pl_clk) begin
            pl_sysref_r <= pl_sysref;
          end
        
          always @(posedge m0_axis_aclk) begin
            user_sysref_adc <= pl_sysref_r;
          end
        
          always @(posedge s0_axis_aclk) begin
            user_sysref_dac <= pl_sysref_r;
          end

 `endif

  // Use the CFGMCLK from the STARTUP module to clock the AXI clock
  //STARTUPE3 axi_aclk_i (
  //  .CFGCLK     (),
  //  .CFGMCLK    (s_axi_aclk),
  //  .DI         (),
  //  .EOS        (s_axi_aresetn),
  //  .PREQ       (),
  //
  //  .DO         (4'd0),
  //  .DTS        (4'd0),
  //  .FCSBO      (1'b0),
  //  .FCSBTS     (1'b0),
  //  .GSR        (1'b0),
  //  .GTS        (1'b0),
  //  .KEYCLEARB  (1'b0),
  //  .PACK       (1'b0),
  //  .USRCCLKO   (1'b0),
  //  .USRCCLKTS  (1'b0),
  //  .USRDONEO   (1'b0),
  //  .USRDONETS  (1'b0)
  //);
  //
  //BUFG s_axi_aclk_bug_i (.I(s_axi_aclk), .O(s_axi_aclk_i));


endmodule


