// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:25:56 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_digilent_jstk2_0_0_stub.v
// Design      : design_1_digilent_jstk2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, m_axis_tvalid, m_axis_tdata, 
  m_axis_tready, s_axis_tvalid, s_axis_tdata, jstk_x, jstk_y, btn_jstk, btn_trigger, led_r, led_g, 
  led_b)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,m_axis_tvalid,m_axis_tdata[7:0],m_axis_tready,s_axis_tvalid,s_axis_tdata[7:0],jstk_x[9:0],jstk_y[9:0],btn_jstk,btn_trigger,led_r[7:0],led_g[7:0],led_b[7:0]" */;
  input aclk;
  input aresetn;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  input m_axis_tready;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input [7:0]led_r;
  input [7:0]led_g;
  input [7:0]led_b;
endmodule
