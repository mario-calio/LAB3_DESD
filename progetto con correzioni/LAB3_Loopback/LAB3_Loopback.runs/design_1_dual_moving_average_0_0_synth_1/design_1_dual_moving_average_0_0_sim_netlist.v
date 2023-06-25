// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:28:32 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dual_moving_average_0_0_sim_netlist.v
// Design      : design_1_dual_moving_average_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dual_moving_average_0_0,dual_moving_average,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dual_moving_average,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    filter_enable,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input filter_enable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire filter_enable;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dual_moving_average U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .filter_enable(filter_enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dual_moving_average
   (s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tdata,
    aclk,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tready,
    aresetn,
    filter_enable);
  output s_axis_tready;
  output [23:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [23:0]s_axis_tdata;
  input aclk;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_tready;
  input aresetn;
  input filter_enable;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire aclk;
  wire aresetn;
  wire [2:0]counter;
  wire counter0;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_i_4_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_i_1_n_0;
  wire counter0_carry__5_i_2_n_0;
  wire counter0_carry__5_i_3_n_0;
  wire counter0_carry__5_i_4_n_0;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_i_1_n_0;
  wire counter0_carry__6_i_2_n_0;
  wire counter0_carry__6_i_3_n_0;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[2]_i_4_n_0 ;
  wire \counter[2]_i_5_n_0 ;
  wire \counter[2]_i_6_n_0 ;
  wire \counter[2]_i_7_n_0 ;
  wire \counter[2]_i_8_n_0 ;
  wire \counter[31]_i_1_n_0 ;
  wire \counter[31]_i_2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire filter_enable;
  wire [31:1]in12;
  wire is_filtering;
  wire is_filtering_i_1_n_0;
  wire [23:0]m_axis_tdata;
  wire [23:0]m_axis_tdata_int_left;
  wire m_axis_tdata_int_left0;
  wire \m_axis_tdata_int_left[23]_i_3_n_0 ;
  wire \m_axis_tdata_int_left[23]_i_4_n_0 ;
  wire \m_axis_tdata_int_left_reg_n_0_[0] ;
  wire \m_axis_tdata_int_left_reg_n_0_[10] ;
  wire \m_axis_tdata_int_left_reg_n_0_[11] ;
  wire \m_axis_tdata_int_left_reg_n_0_[12] ;
  wire \m_axis_tdata_int_left_reg_n_0_[13] ;
  wire \m_axis_tdata_int_left_reg_n_0_[14] ;
  wire \m_axis_tdata_int_left_reg_n_0_[15] ;
  wire \m_axis_tdata_int_left_reg_n_0_[16] ;
  wire \m_axis_tdata_int_left_reg_n_0_[17] ;
  wire \m_axis_tdata_int_left_reg_n_0_[18] ;
  wire \m_axis_tdata_int_left_reg_n_0_[19] ;
  wire \m_axis_tdata_int_left_reg_n_0_[1] ;
  wire \m_axis_tdata_int_left_reg_n_0_[20] ;
  wire \m_axis_tdata_int_left_reg_n_0_[21] ;
  wire \m_axis_tdata_int_left_reg_n_0_[22] ;
  wire \m_axis_tdata_int_left_reg_n_0_[23] ;
  wire \m_axis_tdata_int_left_reg_n_0_[2] ;
  wire \m_axis_tdata_int_left_reg_n_0_[3] ;
  wire \m_axis_tdata_int_left_reg_n_0_[4] ;
  wire \m_axis_tdata_int_left_reg_n_0_[5] ;
  wire \m_axis_tdata_int_left_reg_n_0_[6] ;
  wire \m_axis_tdata_int_left_reg_n_0_[7] ;
  wire \m_axis_tdata_int_left_reg_n_0_[8] ;
  wire \m_axis_tdata_int_left_reg_n_0_[9] ;
  wire [23:0]m_axis_tdata_int_right;
  wire m_axis_tdata_int_right0;
  wire \m_axis_tdata_int_right[23]_i_3_n_0 ;
  wire \m_axis_tdata_int_right[23]_i_4_n_0 ;
  wire \m_axis_tdata_int_right_reg_n_0_[0] ;
  wire \m_axis_tdata_int_right_reg_n_0_[10] ;
  wire \m_axis_tdata_int_right_reg_n_0_[11] ;
  wire \m_axis_tdata_int_right_reg_n_0_[12] ;
  wire \m_axis_tdata_int_right_reg_n_0_[13] ;
  wire \m_axis_tdata_int_right_reg_n_0_[14] ;
  wire \m_axis_tdata_int_right_reg_n_0_[15] ;
  wire \m_axis_tdata_int_right_reg_n_0_[16] ;
  wire \m_axis_tdata_int_right_reg_n_0_[17] ;
  wire \m_axis_tdata_int_right_reg_n_0_[18] ;
  wire \m_axis_tdata_int_right_reg_n_0_[19] ;
  wire \m_axis_tdata_int_right_reg_n_0_[1] ;
  wire \m_axis_tdata_int_right_reg_n_0_[20] ;
  wire \m_axis_tdata_int_right_reg_n_0_[21] ;
  wire \m_axis_tdata_int_right_reg_n_0_[22] ;
  wire \m_axis_tdata_int_right_reg_n_0_[23] ;
  wire \m_axis_tdata_int_right_reg_n_0_[2] ;
  wire \m_axis_tdata_int_right_reg_n_0_[3] ;
  wire \m_axis_tdata_int_right_reg_n_0_[4] ;
  wire \m_axis_tdata_int_right_reg_n_0_[5] ;
  wire \m_axis_tdata_int_right_reg_n_0_[6] ;
  wire \m_axis_tdata_int_right_reg_n_0_[7] ;
  wire \m_axis_tdata_int_right_reg_n_0_[8] ;
  wire \m_axis_tdata_int_right_reg_n_0_[9] ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]\mem_dx_reg[0] ;
  wire \mem_dx_reg[1][0]_srl31_n_0 ;
  wire \mem_dx_reg[1][10]_srl31_n_0 ;
  wire \mem_dx_reg[1][11]_srl31_n_0 ;
  wire \mem_dx_reg[1][12]_srl31_n_0 ;
  wire \mem_dx_reg[1][13]_srl31_n_0 ;
  wire \mem_dx_reg[1][14]_srl31_n_0 ;
  wire \mem_dx_reg[1][15]_srl31_n_0 ;
  wire \mem_dx_reg[1][16]_srl31_n_0 ;
  wire \mem_dx_reg[1][17]_srl31_n_0 ;
  wire \mem_dx_reg[1][18]_srl31_n_0 ;
  wire \mem_dx_reg[1][19]_srl31_n_0 ;
  wire \mem_dx_reg[1][1]_srl31_n_0 ;
  wire \mem_dx_reg[1][20]_srl31_n_0 ;
  wire \mem_dx_reg[1][21]_srl31_n_0 ;
  wire \mem_dx_reg[1][22]_srl31_n_0 ;
  wire \mem_dx_reg[1][23]_srl31_n_0 ;
  wire \mem_dx_reg[1][2]_srl31_n_0 ;
  wire \mem_dx_reg[1][3]_srl31_n_0 ;
  wire \mem_dx_reg[1][4]_srl31_n_0 ;
  wire \mem_dx_reg[1][5]_srl31_n_0 ;
  wire \mem_dx_reg[1][6]_srl31_n_0 ;
  wire \mem_dx_reg[1][7]_srl31_n_0 ;
  wire \mem_dx_reg[1][8]_srl31_n_0 ;
  wire \mem_dx_reg[1][9]_srl31_n_0 ;
  wire \mem_dx_reg[31]0 ;
  wire [23:0]\mem_sx_reg[0] ;
  wire \mem_sx_reg[1][0]_srl31_n_0 ;
  wire \mem_sx_reg[1][10]_srl31_n_0 ;
  wire \mem_sx_reg[1][11]_srl31_n_0 ;
  wire \mem_sx_reg[1][12]_srl31_n_0 ;
  wire \mem_sx_reg[1][13]_srl31_n_0 ;
  wire \mem_sx_reg[1][14]_srl31_n_0 ;
  wire \mem_sx_reg[1][15]_srl31_n_0 ;
  wire \mem_sx_reg[1][16]_srl31_n_0 ;
  wire \mem_sx_reg[1][17]_srl31_n_0 ;
  wire \mem_sx_reg[1][18]_srl31_n_0 ;
  wire \mem_sx_reg[1][19]_srl31_n_0 ;
  wire \mem_sx_reg[1][1]_srl31_n_0 ;
  wire \mem_sx_reg[1][20]_srl31_n_0 ;
  wire \mem_sx_reg[1][21]_srl31_n_0 ;
  wire \mem_sx_reg[1][22]_srl31_n_0 ;
  wire \mem_sx_reg[1][23]_srl31_n_0 ;
  wire \mem_sx_reg[1][2]_srl31_n_0 ;
  wire \mem_sx_reg[1][3]_srl31_n_0 ;
  wire \mem_sx_reg[1][4]_srl31_n_0 ;
  wire \mem_sx_reg[1][5]_srl31_n_0 ;
  wire \mem_sx_reg[1][6]_srl31_n_0 ;
  wire \mem_sx_reg[1][7]_srl31_n_0 ;
  wire \mem_sx_reg[1][8]_srl31_n_0 ;
  wire \mem_sx_reg[1][9]_srl31_n_0 ;
  wire \mem_sx_reg[31]0 ;
  wire [29:0]output_temp;
  wire \output_temp[29]_i_1_n_0 ;
  wire \output_temp[29]_i_3_n_0 ;
  wire \output_temp_reg_n_0_[0] ;
  wire \output_temp_reg_n_0_[10] ;
  wire \output_temp_reg_n_0_[11] ;
  wire \output_temp_reg_n_0_[12] ;
  wire \output_temp_reg_n_0_[13] ;
  wire \output_temp_reg_n_0_[14] ;
  wire \output_temp_reg_n_0_[15] ;
  wire \output_temp_reg_n_0_[16] ;
  wire \output_temp_reg_n_0_[17] ;
  wire \output_temp_reg_n_0_[18] ;
  wire \output_temp_reg_n_0_[19] ;
  wire \output_temp_reg_n_0_[1] ;
  wire \output_temp_reg_n_0_[20] ;
  wire \output_temp_reg_n_0_[21] ;
  wire \output_temp_reg_n_0_[22] ;
  wire \output_temp_reg_n_0_[23] ;
  wire \output_temp_reg_n_0_[24] ;
  wire \output_temp_reg_n_0_[25] ;
  wire \output_temp_reg_n_0_[26] ;
  wire \output_temp_reg_n_0_[27] ;
  wire \output_temp_reg_n_0_[28] ;
  wire \output_temp_reg_n_0_[29] ;
  wire \output_temp_reg_n_0_[2] ;
  wire \output_temp_reg_n_0_[3] ;
  wire \output_temp_reg_n_0_[4] ;
  wire \output_temp_reg_n_0_[5] ;
  wire \output_temp_reg_n_0_[6] ;
  wire \output_temp_reg_n_0_[7] ;
  wire \output_temp_reg_n_0_[8] ;
  wire \output_temp_reg_n_0_[9] ;
  wire [29:29]p_0_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire [29:0]sum_dx;
  wire sum_dx0_carry__0_i_1_n_0;
  wire sum_dx0_carry__0_i_2_n_0;
  wire sum_dx0_carry__0_i_3_n_0;
  wire sum_dx0_carry__0_i_4_n_0;
  wire sum_dx0_carry__0_i_5_n_0;
  wire sum_dx0_carry__0_i_6_n_0;
  wire sum_dx0_carry__0_i_7_n_0;
  wire sum_dx0_carry__0_i_8_n_0;
  wire sum_dx0_carry__0_n_0;
  wire sum_dx0_carry__0_n_1;
  wire sum_dx0_carry__0_n_2;
  wire sum_dx0_carry__0_n_3;
  wire sum_dx0_carry__0_n_4;
  wire sum_dx0_carry__0_n_5;
  wire sum_dx0_carry__0_n_6;
  wire sum_dx0_carry__0_n_7;
  wire sum_dx0_carry__1_i_1_n_0;
  wire sum_dx0_carry__1_i_2_n_0;
  wire sum_dx0_carry__1_i_3_n_0;
  wire sum_dx0_carry__1_i_4_n_0;
  wire sum_dx0_carry__1_i_5_n_0;
  wire sum_dx0_carry__1_i_6_n_0;
  wire sum_dx0_carry__1_i_7_n_0;
  wire sum_dx0_carry__1_i_8_n_0;
  wire sum_dx0_carry__1_n_0;
  wire sum_dx0_carry__1_n_1;
  wire sum_dx0_carry__1_n_2;
  wire sum_dx0_carry__1_n_3;
  wire sum_dx0_carry__1_n_4;
  wire sum_dx0_carry__1_n_5;
  wire sum_dx0_carry__1_n_6;
  wire sum_dx0_carry__1_n_7;
  wire sum_dx0_carry__2_i_1_n_0;
  wire sum_dx0_carry__2_i_2_n_0;
  wire sum_dx0_carry__2_i_3_n_0;
  wire sum_dx0_carry__2_i_4_n_0;
  wire sum_dx0_carry__2_i_5_n_0;
  wire sum_dx0_carry__2_i_6_n_0;
  wire sum_dx0_carry__2_i_7_n_0;
  wire sum_dx0_carry__2_i_8_n_0;
  wire sum_dx0_carry__2_n_0;
  wire sum_dx0_carry__2_n_1;
  wire sum_dx0_carry__2_n_2;
  wire sum_dx0_carry__2_n_3;
  wire sum_dx0_carry__2_n_4;
  wire sum_dx0_carry__2_n_5;
  wire sum_dx0_carry__2_n_6;
  wire sum_dx0_carry__2_n_7;
  wire sum_dx0_carry__3_i_1_n_0;
  wire sum_dx0_carry__3_i_2_n_0;
  wire sum_dx0_carry__3_i_3_n_0;
  wire sum_dx0_carry__3_i_4_n_0;
  wire sum_dx0_carry__3_i_5_n_0;
  wire sum_dx0_carry__3_i_6_n_0;
  wire sum_dx0_carry__3_i_7_n_0;
  wire sum_dx0_carry__3_i_8_n_0;
  wire sum_dx0_carry__3_n_0;
  wire sum_dx0_carry__3_n_1;
  wire sum_dx0_carry__3_n_2;
  wire sum_dx0_carry__3_n_3;
  wire sum_dx0_carry__3_n_4;
  wire sum_dx0_carry__3_n_5;
  wire sum_dx0_carry__3_n_6;
  wire sum_dx0_carry__3_n_7;
  wire sum_dx0_carry__4_i_1_n_0;
  wire sum_dx0_carry__4_i_2_n_0;
  wire sum_dx0_carry__4_i_3_n_0;
  wire sum_dx0_carry__4_i_4_n_0;
  wire sum_dx0_carry__4_i_5_n_0;
  wire sum_dx0_carry__4_i_6_n_0;
  wire sum_dx0_carry__4_i_7_n_0;
  wire sum_dx0_carry__4_i_8_n_0;
  wire sum_dx0_carry__4_n_0;
  wire sum_dx0_carry__4_n_1;
  wire sum_dx0_carry__4_n_2;
  wire sum_dx0_carry__4_n_3;
  wire sum_dx0_carry__4_n_4;
  wire sum_dx0_carry__4_n_5;
  wire sum_dx0_carry__4_n_6;
  wire sum_dx0_carry__4_n_7;
  wire sum_dx0_carry__5_i_1_n_0;
  wire sum_dx0_carry__5_i_2_n_0;
  wire sum_dx0_carry__5_i_3_n_0;
  wire sum_dx0_carry__5_i_4_n_0;
  wire sum_dx0_carry__5_i_5_n_0;
  wire sum_dx0_carry__5_n_0;
  wire sum_dx0_carry__5_n_1;
  wire sum_dx0_carry__5_n_2;
  wire sum_dx0_carry__5_n_3;
  wire sum_dx0_carry__5_n_4;
  wire sum_dx0_carry__5_n_5;
  wire sum_dx0_carry__5_n_6;
  wire sum_dx0_carry__5_n_7;
  wire sum_dx0_carry__6_i_1_n_0;
  wire sum_dx0_carry__6_i_2_n_0;
  wire sum_dx0_carry__6_n_3;
  wire sum_dx0_carry__6_n_6;
  wire sum_dx0_carry__6_n_7;
  wire sum_dx0_carry_i_1_n_0;
  wire sum_dx0_carry_i_2_n_0;
  wire sum_dx0_carry_i_3_n_0;
  wire sum_dx0_carry_i_4_n_0;
  wire sum_dx0_carry_i_5_n_0;
  wire sum_dx0_carry_i_6_n_0;
  wire sum_dx0_carry_i_7_n_0;
  wire sum_dx0_carry_i_8_n_0;
  wire sum_dx0_carry_n_0;
  wire sum_dx0_carry_n_1;
  wire sum_dx0_carry_n_2;
  wire sum_dx0_carry_n_3;
  wire sum_dx0_carry_n_4;
  wire sum_dx0_carry_n_5;
  wire sum_dx0_carry_n_6;
  wire sum_dx0_carry_n_7;
  wire [29:0]sum_sx;
  wire sum_sx0_carry__0_i_1_n_0;
  wire sum_sx0_carry__0_i_2_n_0;
  wire sum_sx0_carry__0_i_3_n_0;
  wire sum_sx0_carry__0_i_4_n_0;
  wire sum_sx0_carry__0_i_5_n_0;
  wire sum_sx0_carry__0_i_6_n_0;
  wire sum_sx0_carry__0_i_7_n_0;
  wire sum_sx0_carry__0_i_8_n_0;
  wire sum_sx0_carry__0_n_0;
  wire sum_sx0_carry__0_n_1;
  wire sum_sx0_carry__0_n_2;
  wire sum_sx0_carry__0_n_3;
  wire sum_sx0_carry__0_n_4;
  wire sum_sx0_carry__0_n_5;
  wire sum_sx0_carry__0_n_6;
  wire sum_sx0_carry__0_n_7;
  wire sum_sx0_carry__1_i_1_n_0;
  wire sum_sx0_carry__1_i_2_n_0;
  wire sum_sx0_carry__1_i_3_n_0;
  wire sum_sx0_carry__1_i_4_n_0;
  wire sum_sx0_carry__1_i_5_n_0;
  wire sum_sx0_carry__1_i_6_n_0;
  wire sum_sx0_carry__1_i_7_n_0;
  wire sum_sx0_carry__1_i_8_n_0;
  wire sum_sx0_carry__1_n_0;
  wire sum_sx0_carry__1_n_1;
  wire sum_sx0_carry__1_n_2;
  wire sum_sx0_carry__1_n_3;
  wire sum_sx0_carry__1_n_4;
  wire sum_sx0_carry__1_n_5;
  wire sum_sx0_carry__1_n_6;
  wire sum_sx0_carry__1_n_7;
  wire sum_sx0_carry__2_i_1_n_0;
  wire sum_sx0_carry__2_i_2_n_0;
  wire sum_sx0_carry__2_i_3_n_0;
  wire sum_sx0_carry__2_i_4_n_0;
  wire sum_sx0_carry__2_i_5_n_0;
  wire sum_sx0_carry__2_i_6_n_0;
  wire sum_sx0_carry__2_i_7_n_0;
  wire sum_sx0_carry__2_i_8_n_0;
  wire sum_sx0_carry__2_n_0;
  wire sum_sx0_carry__2_n_1;
  wire sum_sx0_carry__2_n_2;
  wire sum_sx0_carry__2_n_3;
  wire sum_sx0_carry__2_n_4;
  wire sum_sx0_carry__2_n_5;
  wire sum_sx0_carry__2_n_6;
  wire sum_sx0_carry__2_n_7;
  wire sum_sx0_carry__3_i_1_n_0;
  wire sum_sx0_carry__3_i_2_n_0;
  wire sum_sx0_carry__3_i_3_n_0;
  wire sum_sx0_carry__3_i_4_n_0;
  wire sum_sx0_carry__3_i_5_n_0;
  wire sum_sx0_carry__3_i_6_n_0;
  wire sum_sx0_carry__3_i_7_n_0;
  wire sum_sx0_carry__3_i_8_n_0;
  wire sum_sx0_carry__3_n_0;
  wire sum_sx0_carry__3_n_1;
  wire sum_sx0_carry__3_n_2;
  wire sum_sx0_carry__3_n_3;
  wire sum_sx0_carry__3_n_4;
  wire sum_sx0_carry__3_n_5;
  wire sum_sx0_carry__3_n_6;
  wire sum_sx0_carry__3_n_7;
  wire sum_sx0_carry__4_i_1_n_0;
  wire sum_sx0_carry__4_i_2_n_0;
  wire sum_sx0_carry__4_i_3_n_0;
  wire sum_sx0_carry__4_i_4_n_0;
  wire sum_sx0_carry__4_i_5_n_0;
  wire sum_sx0_carry__4_i_6_n_0;
  wire sum_sx0_carry__4_i_7_n_0;
  wire sum_sx0_carry__4_i_8_n_0;
  wire sum_sx0_carry__4_n_0;
  wire sum_sx0_carry__4_n_1;
  wire sum_sx0_carry__4_n_2;
  wire sum_sx0_carry__4_n_3;
  wire sum_sx0_carry__4_n_4;
  wire sum_sx0_carry__4_n_5;
  wire sum_sx0_carry__4_n_6;
  wire sum_sx0_carry__4_n_7;
  wire sum_sx0_carry__5_i_1_n_0;
  wire sum_sx0_carry__5_i_2_n_0;
  wire sum_sx0_carry__5_i_3_n_0;
  wire sum_sx0_carry__5_i_4_n_0;
  wire sum_sx0_carry__5_i_5_n_0;
  wire sum_sx0_carry__5_n_0;
  wire sum_sx0_carry__5_n_1;
  wire sum_sx0_carry__5_n_2;
  wire sum_sx0_carry__5_n_3;
  wire sum_sx0_carry__5_n_4;
  wire sum_sx0_carry__5_n_5;
  wire sum_sx0_carry__5_n_6;
  wire sum_sx0_carry__5_n_7;
  wire sum_sx0_carry__6_i_1_n_0;
  wire sum_sx0_carry__6_i_2_n_0;
  wire sum_sx0_carry__6_n_3;
  wire sum_sx0_carry__6_n_6;
  wire sum_sx0_carry__6_n_7;
  wire sum_sx0_carry_i_1_n_0;
  wire sum_sx0_carry_i_2_n_0;
  wire sum_sx0_carry_i_3_n_0;
  wire sum_sx0_carry_i_4_n_0;
  wire sum_sx0_carry_i_5_n_0;
  wire sum_sx0_carry_i_6_n_0;
  wire sum_sx0_carry_i_7_n_0;
  wire sum_sx0_carry_i_8_n_0;
  wire sum_sx0_carry_n_0;
  wire sum_sx0_carry_n_1;
  wire sum_sx0_carry_n_2;
  wire sum_sx0_carry_n_3;
  wire sum_sx0_carry_n_4;
  wire sum_sx0_carry_n_5;
  wire sum_sx0_carry_n_6;
  wire sum_sx0_carry_n_7;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire \NLW_mem_dx_reg[1][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][16]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][17]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][18]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][19]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][20]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][21]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][22]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][23]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_dx_reg[1][9]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][0]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][10]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][11]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][12]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][13]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][14]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][15]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][16]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][17]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][18]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][19]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][1]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][20]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][21]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][22]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][23]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][2]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][3]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][4]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][5]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][6]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][7]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][8]_srl31_Q31_UNCONNECTED ;
  wire \NLW_mem_sx_reg[1][9]_srl31_Q31_UNCONNECTED ;
  wire [3:1]NLW_sum_dx0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_sum_dx0_carry__6_O_UNCONNECTED;
  wire [3:1]NLW_sum_sx0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_sum_sx0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__1[0]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F0F0C3A)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_axis_tlast),
        .I1(is_filtering),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__1[1]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0D3C)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(is_filtering),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__1[2]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\counter_reg_n_0_[21] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(\counter_reg_n_0_[23] ),
        .I3(\counter_reg_n_0_[22] ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[19] ),
        .I3(\counter_reg_n_0_[18] ),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[28] ),
        .I2(\counter_reg_n_0_[31] ),
        .I3(\counter_reg_n_0_[30] ),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[24] ),
        .I2(\counter_reg_n_0_[27] ),
        .I3(\counter_reg_n_0_[26] ),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h50AB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state__0[2]),
        .I1(s_axis_tlast),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(state__1[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_8_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\FSM_sequential_state[2]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_12_n_0 ),
        .I1(\FSM_sequential_state[2]_i_13_n_0 ),
        .I2(\FSM_sequential_state[2]_i_14_n_0 ),
        .I3(\FSM_sequential_state[2]_i_15_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h43)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0C0AC0AF)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "waiting:000,get_right:001,get_left:100,output_left:110,computing_left:101,output_right:011,computing_right:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }),
        .O(in12[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }),
        .O(in12[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1
       (.I0(\counter_reg_n_0_[8] ),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2
       (.I0(\counter_reg_n_0_[7] ),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3
       (.I0(\counter_reg_n_0_[6] ),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4
       (.I0(\counter_reg_n_0_[5] ),
        .O(counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }),
        .O(in12[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1
       (.I0(\counter_reg_n_0_[12] ),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2
       (.I0(\counter_reg_n_0_[11] ),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3
       (.I0(\counter_reg_n_0_[10] ),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4
       (.I0(\counter_reg_n_0_[9] ),
        .O(counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }),
        .O(in12[16:13]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1
       (.I0(\counter_reg_n_0_[16] ),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2
       (.I0(\counter_reg_n_0_[15] ),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3
       (.I0(\counter_reg_n_0_[14] ),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4
       (.I0(\counter_reg_n_0_[13] ),
        .O(counter0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }),
        .O(in12[20:17]),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1
       (.I0(\counter_reg_n_0_[20] ),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2
       (.I0(\counter_reg_n_0_[19] ),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3
       (.I0(\counter_reg_n_0_[18] ),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4
       (.I0(\counter_reg_n_0_[17] ),
        .O(counter0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }),
        .O(in12[24:21]),
        .S({counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0,counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1
       (.I0(\counter_reg_n_0_[24] ),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2
       (.I0(\counter_reg_n_0_[23] ),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3
       (.I0(\counter_reg_n_0_[22] ),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_4
       (.I0(\counter_reg_n_0_[21] ),
        .O(counter0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }),
        .O(in12[28:25]),
        .S({counter0_carry__5_i_1_n_0,counter0_carry__5_i_2_n_0,counter0_carry__5_i_3_n_0,counter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_1
       (.I0(\counter_reg_n_0_[28] ),
        .O(counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_2
       (.I0(\counter_reg_n_0_[27] ),
        .O(counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_3
       (.I0(\counter_reg_n_0_[26] ),
        .O(counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__5_i_4
       (.I0(\counter_reg_n_0_[25] ),
        .O(counter0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],in12[31:29]}),
        .S({1'b0,counter0_carry__6_i_1_n_0,counter0_carry__6_i_2_n_0,counter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_1
       (.I0(\counter_reg_n_0_[31] ),
        .O(counter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_2
       (.I0(\counter_reg_n_0_[30] ),
        .O(counter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__6_i_3
       (.I0(\counter_reg_n_0_[29] ),
        .O(counter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1
       (.I0(\counter_reg_n_0_[4] ),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2
       (.I0(\counter_reg_n_0_[3] ),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3
       (.I0(\counter_reg_n_0_[2] ),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4
       (.I0(\counter_reg_n_0_[1] ),
        .O(counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h075F)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(counter[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \counter[2]_i_1 
       (.I0(p_0_in),
        .I1(\counter[2]_i_4_n_0 ),
        .I2(\counter[2]_i_5_n_0 ),
        .I3(\counter[2]_i_6_n_0 ),
        .I4(\counter[2]_i_7_n_0 ),
        .I5(\counter[2]_i_8_n_0 ),
        .O(counter0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0BAF)) 
    \counter[2]_i_2 
       (.I0(in12[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(counter[2]));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    \counter[2]_i_3 
       (.I0(is_filtering),
        .I1(aresetn),
        .I2(s_axis_tvalid),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2400)) 
    \counter[2]_i_4 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(aresetn),
        .O(\counter[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[2]_i_5 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\FSM_sequential_state[2]_i_10_n_0 ),
        .O(\counter[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[2]_i_6 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\counter[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[2]_i_7 
       (.I0(\counter_reg_n_0_[26] ),
        .I1(\counter_reg_n_0_[27] ),
        .I2(\counter_reg_n_0_[24] ),
        .I3(\counter_reg_n_0_[25] ),
        .I4(\FSM_sequential_state[2]_i_14_n_0 ),
        .O(\counter[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[2]_i_8 
       (.I0(\counter_reg_n_0_[18] ),
        .I1(\counter_reg_n_0_[19] ),
        .I2(\counter_reg_n_0_[16] ),
        .I3(\counter_reg_n_0_[17] ),
        .I4(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(\counter[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFE00)) 
    \counter[31]_i_1 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(\counter[2]_i_6_n_0 ),
        .I2(\counter[2]_i_5_n_0 ),
        .I3(\counter[2]_i_4_n_0 ),
        .I4(p_0_in),
        .I5(\counter[31]_i_2_n_0 ),
        .O(\counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \counter[31]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\counter[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(aclk),
        .CE(counter0),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(aclk),
        .CE(counter0),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[30]),
        .Q(\counter_reg_n_0_[30] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[31]),
        .Q(\counter_reg_n_0_[31] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(\counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(aclk),
        .CE(counter0),
        .D(in12[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(\counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    is_filtering_i_1
       (.I0(filter_enable),
        .I1(is_filtering),
        .O(is_filtering_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_filtering_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(is_filtering_i_1_n_0),
        .Q(is_filtering));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[0] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[0] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[10] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[10] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[11] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[11] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[12] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[12] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[12]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[13] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[13] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[14] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[14] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[14]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[15] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[15] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[16] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[16] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[16]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[17] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[17] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[17]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[18] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[18] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[19] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[19] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[1] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[1] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[20] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[20] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[20]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[21] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[21] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[22] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[22] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[22]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[23] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[23] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[2] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[2] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[3] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[3] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[4] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[4] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[5] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[5] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[6] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[6] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[7] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[7] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[7]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[8] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[8] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'h0C00A000)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata_int_left_reg_n_0_[9] ),
        .I1(\m_axis_tdata_int_right_reg_n_0_[9] ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(m_axis_tdata[9]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[0]_i_1 
       (.I0(\output_temp_reg_n_0_[0] ),
        .I1(s_axis_tdata[0]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[10]_i_1 
       (.I0(\output_temp_reg_n_0_[10] ),
        .I1(s_axis_tdata[10]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[11]_i_1 
       (.I0(\output_temp_reg_n_0_[11] ),
        .I1(s_axis_tdata[11]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[12]_i_1 
       (.I0(\output_temp_reg_n_0_[12] ),
        .I1(s_axis_tdata[12]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[13]_i_1 
       (.I0(\output_temp_reg_n_0_[13] ),
        .I1(s_axis_tdata[13]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[14]_i_1 
       (.I0(\output_temp_reg_n_0_[14] ),
        .I1(s_axis_tdata[14]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[15]_i_1 
       (.I0(\output_temp_reg_n_0_[15] ),
        .I1(s_axis_tdata[15]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[16]_i_1 
       (.I0(\output_temp_reg_n_0_[16] ),
        .I1(s_axis_tdata[16]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[17]_i_1 
       (.I0(\output_temp_reg_n_0_[17] ),
        .I1(s_axis_tdata[17]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[18]_i_1 
       (.I0(\output_temp_reg_n_0_[18] ),
        .I1(s_axis_tdata[18]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[19]_i_1 
       (.I0(\output_temp_reg_n_0_[19] ),
        .I1(s_axis_tdata[19]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[19]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[1]_i_1 
       (.I0(\output_temp_reg_n_0_[1] ),
        .I1(s_axis_tdata[1]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[20]_i_1 
       (.I0(\output_temp_reg_n_0_[20] ),
        .I1(s_axis_tdata[20]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[21]_i_1 
       (.I0(\output_temp_reg_n_0_[21] ),
        .I1(s_axis_tdata[21]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[21]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[22]_i_1 
       (.I0(\output_temp_reg_n_0_[22] ),
        .I1(s_axis_tdata[22]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[22]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \m_axis_tdata_int_left[23]_i_1 
       (.I0(\m_axis_tdata_int_left[23]_i_3_n_0 ),
        .I1(\counter[2]_i_5_n_0 ),
        .I2(\counter[2]_i_6_n_0 ),
        .I3(\counter[2]_i_7_n_0 ),
        .I4(\counter[2]_i_8_n_0 ),
        .I5(\m_axis_tdata_int_left[23]_i_4_n_0 ),
        .O(m_axis_tdata_int_left0));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[23]_i_2 
       (.I0(\output_temp_reg_n_0_[23] ),
        .I1(s_axis_tdata[23]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[23]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \m_axis_tdata_int_left[23]_i_3 
       (.I0(is_filtering),
        .I1(aresetn),
        .I2(s_axis_tvalid),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\m_axis_tdata_int_left[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \m_axis_tdata_int_left[23]_i_4 
       (.I0(aresetn),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\m_axis_tdata_int_left[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[2]_i_1 
       (.I0(\output_temp_reg_n_0_[2] ),
        .I1(s_axis_tdata[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[3]_i_1 
       (.I0(\output_temp_reg_n_0_[3] ),
        .I1(s_axis_tdata[3]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[4]_i_1 
       (.I0(\output_temp_reg_n_0_[4] ),
        .I1(s_axis_tdata[4]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[5]_i_1 
       (.I0(\output_temp_reg_n_0_[5] ),
        .I1(s_axis_tdata[5]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[6]_i_1 
       (.I0(\output_temp_reg_n_0_[6] ),
        .I1(s_axis_tdata[6]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[7]_i_1 
       (.I0(\output_temp_reg_n_0_[7] ),
        .I1(s_axis_tdata[7]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[8]_i_1 
       (.I0(\output_temp_reg_n_0_[8] ),
        .I1(s_axis_tdata[8]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \m_axis_tdata_int_left[9]_i_1 
       (.I0(\output_temp_reg_n_0_[9] ),
        .I1(s_axis_tdata[9]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(m_axis_tdata_int_left[9]));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[0]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[10] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[10]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[11] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[11]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[12] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[12]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[13] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[13]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[14] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[14]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[15] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[15]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[16] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[16]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[17] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[17]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[18] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[18]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[19] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[19]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[1]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[20] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[20]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[21] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[21]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[22] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[22]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[23] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[23]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[2]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[3]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[4]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[5]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[6]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[7]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[8] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[8]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_left_reg[9] 
       (.C(aclk),
        .CE(m_axis_tdata_int_left0),
        .D(m_axis_tdata_int_left[9]),
        .Q(\m_axis_tdata_int_left_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[0]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[0]),
        .O(m_axis_tdata_int_right[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[10]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[10] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[10]),
        .O(m_axis_tdata_int_right[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[11]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[11] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[11]),
        .O(m_axis_tdata_int_right[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[12]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[12] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[12]),
        .O(m_axis_tdata_int_right[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[13]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[13] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[13]),
        .O(m_axis_tdata_int_right[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[14]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[14] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[14]),
        .O(m_axis_tdata_int_right[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[15]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[15] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[15]),
        .O(m_axis_tdata_int_right[15]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[16]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[16] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[16]),
        .O(m_axis_tdata_int_right[16]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[17]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[17] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[17]),
        .O(m_axis_tdata_int_right[17]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[18]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[18] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[18]),
        .O(m_axis_tdata_int_right[18]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[19]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[19] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[19]),
        .O(m_axis_tdata_int_right[19]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[1]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[1] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[1]),
        .O(m_axis_tdata_int_right[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[20]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[20] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[20]),
        .O(m_axis_tdata_int_right[20]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[21]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[21] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[21]),
        .O(m_axis_tdata_int_right[21]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[22]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[22] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[22]),
        .O(m_axis_tdata_int_right[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \m_axis_tdata_int_right[23]_i_1 
       (.I0(\counter[2]_i_5_n_0 ),
        .I1(\counter[2]_i_6_n_0 ),
        .I2(\counter[2]_i_7_n_0 ),
        .I3(\counter[2]_i_8_n_0 ),
        .I4(\m_axis_tdata_int_right[23]_i_3_n_0 ),
        .I5(\m_axis_tdata_int_right[23]_i_4_n_0 ),
        .O(m_axis_tdata_int_right0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[23]_i_2 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[23] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[23]),
        .O(m_axis_tdata_int_right[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_int_right[23]_i_3 
       (.I0(state__0[0]),
        .I1(aresetn),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(\m_axis_tdata_int_right[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \m_axis_tdata_int_right[23]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(is_filtering),
        .I4(s_axis_tvalid),
        .I5(aresetn),
        .O(\m_axis_tdata_int_right[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[2]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[2] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[2]),
        .O(m_axis_tdata_int_right[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[3]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[3] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[3]),
        .O(m_axis_tdata_int_right[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[4]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[4] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[4]),
        .O(m_axis_tdata_int_right[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[5]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[5] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[5]),
        .O(m_axis_tdata_int_right[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[6]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[6] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[6]),
        .O(m_axis_tdata_int_right[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[7]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[7] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[7]),
        .O(m_axis_tdata_int_right[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[8]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[8] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[8]),
        .O(m_axis_tdata_int_right[8]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata_int_right[9]_i_1 
       (.I0(state__0[0]),
        .I1(\output_temp_reg_n_0_[9] ),
        .I2(state__0[1]),
        .I3(s_axis_tdata[9]),
        .O(m_axis_tdata_int_right[9]));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[0]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[10] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[10]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[11] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[11]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[12] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[12]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[13] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[13]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[14] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[14]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[15] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[15]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[16] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[16]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[17] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[17]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[18] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[18]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[19] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[19]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[1]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[20] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[20]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[21] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[21]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[22] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[22]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[23] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[23]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[2]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[3]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[4]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[5]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[6]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[7]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[8] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[8]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_right_reg[9] 
       (.C(aclk),
        .CE(m_axis_tdata_int_right0),
        .D(m_axis_tdata_int_right[9]),
        .Q(\m_axis_tdata_int_right_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast_INST_0
       (.I0(state__0[2]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h48)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(m_axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][0] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][0]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][10] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][10]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][11] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][11]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][12] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][12]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][13] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][13]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][14] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][14]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][15] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][15]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][16] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][16]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][17] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][17]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][18] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][18]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][19] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][19]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][1] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][1]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][20] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][20]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][21] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][21]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][22] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][22]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][23] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][23]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][2] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][2]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][3] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][3]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][4] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][4]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][5] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][5]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][6] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][6]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][7] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][7]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][8] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][8]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_dx_reg[0][9] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(\mem_dx_reg[1][9]_srl31_n_0 ),
        .Q(\mem_dx_reg[0] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][0]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[0]),
        .Q(\mem_dx_reg[1][0]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][10]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(\mem_dx_reg[1][10]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][11]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(\mem_dx_reg[1][11]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][12]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(\mem_dx_reg[1][12]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][13]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(\mem_dx_reg[1][13]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][14]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(\mem_dx_reg[1][14]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][15]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(\mem_dx_reg[1][15]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][16]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][16]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(\mem_dx_reg[1][16]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][16]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][17]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][17]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(\mem_dx_reg[1][17]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][17]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][18]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][18]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(\mem_dx_reg[1][18]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][18]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][19]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][19]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(\mem_dx_reg[1][19]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][19]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][1]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[1]),
        .Q(\mem_dx_reg[1][1]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][20]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][20]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(\mem_dx_reg[1][20]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][20]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][21]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][21]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(\mem_dx_reg[1][21]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][21]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][22]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][22]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(\mem_dx_reg[1][22]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][22]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][23]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][23]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(\mem_dx_reg[1][23]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][23]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][2]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[2]),
        .Q(\mem_dx_reg[1][2]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][3]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[3]),
        .Q(\mem_dx_reg[1][3]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][4]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[4]),
        .Q(\mem_dx_reg[1][4]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][5]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(\mem_dx_reg[1][5]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][6]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(\mem_dx_reg[1][6]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][7]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(\mem_dx_reg[1][7]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][8]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(\mem_dx_reg[1][8]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_dx_reg[1] " *) 
  (* srl_name = "\U0/mem_dx_reg[1][9]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_dx_reg[1][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_dx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(\mem_dx_reg[1][9]_srl31_n_0 ),
        .Q31(\NLW_mem_dx_reg[1][9]_srl31_Q31_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][0] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][0]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][10] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][10]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][11] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][11]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][12] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][12]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][13] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][13]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][14] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][14]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][15] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][15]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][16] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][16]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][17] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][17]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][18] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][18]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][19] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][19]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][1] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][1]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][20] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][20]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][21] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][21]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][22] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][22]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][23] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][23]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][2] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][2]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][3] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][3]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][4] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][4]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][5] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][5]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][6] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][6]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][7] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][7]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][8] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][8]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_sx_reg[0][9] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(\mem_sx_reg[1][9]_srl31_n_0 ),
        .Q(\mem_sx_reg[0] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][0]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][0]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[0]),
        .Q(\mem_sx_reg[1][0]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][0]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][10]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][10]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(\mem_sx_reg[1][10]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][10]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][11]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][11]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(\mem_sx_reg[1][11]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][11]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][12]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][12]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(\mem_sx_reg[1][12]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][12]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][13]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][13]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(\mem_sx_reg[1][13]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][13]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][14]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][14]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(\mem_sx_reg[1][14]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][14]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][15]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][15]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(\mem_sx_reg[1][15]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][15]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][16]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][16]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(\mem_sx_reg[1][16]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][16]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][17]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][17]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(\mem_sx_reg[1][17]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][17]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][18]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][18]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(\mem_sx_reg[1][18]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][18]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][19]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][19]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(\mem_sx_reg[1][19]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][19]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][1]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][1]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[1]),
        .Q(\mem_sx_reg[1][1]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][1]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][20]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][20]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(\mem_sx_reg[1][20]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][20]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][21]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][21]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(\mem_sx_reg[1][21]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][21]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][22]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][22]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(\mem_sx_reg[1][22]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][22]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][23]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][23]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(\mem_sx_reg[1][23]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][23]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][2]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][2]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[2]),
        .Q(\mem_sx_reg[1][2]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][2]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][3]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][3]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[3]),
        .Q(\mem_sx_reg[1][3]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][3]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][4]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][4]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[4]),
        .Q(\mem_sx_reg[1][4]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][4]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][5]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][5]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(\mem_sx_reg[1][5]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][5]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][6]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][6]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(\mem_sx_reg[1][6]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][6]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][7]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][7]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(\mem_sx_reg[1][7]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][7]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][8]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][8]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(\mem_sx_reg[1][8]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][8]_srl31_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/mem_sx_reg[1] " *) 
  (* srl_name = "\U0/mem_sx_reg[1][9]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \mem_sx_reg[1][9]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(\mem_sx_reg[31]0 ),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(\mem_sx_reg[1][9]_srl31_n_0 ),
        .Q31(\NLW_mem_sx_reg[1][9]_srl31_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[0]_i_1 
       (.I0(sum_dx[0]),
        .I1(sum_sx[0]),
        .I2(\output_temp_reg_n_0_[1] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[0]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[10]_i_1 
       (.I0(sum_dx[10]),
        .I1(sum_sx[10]),
        .I2(\output_temp_reg_n_0_[11] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[10]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[11]_i_1 
       (.I0(sum_dx[11]),
        .I1(sum_sx[11]),
        .I2(\output_temp_reg_n_0_[12] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[11]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[12]_i_1 
       (.I0(sum_dx[12]),
        .I1(sum_sx[12]),
        .I2(\output_temp_reg_n_0_[13] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[12]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[13]_i_1 
       (.I0(sum_dx[13]),
        .I1(sum_sx[13]),
        .I2(\output_temp_reg_n_0_[14] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[13]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[14]_i_1 
       (.I0(sum_dx[14]),
        .I1(sum_sx[14]),
        .I2(\output_temp_reg_n_0_[15] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[14]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[15]_i_1 
       (.I0(sum_dx[15]),
        .I1(sum_sx[15]),
        .I2(\output_temp_reg_n_0_[16] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[15]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[16]_i_1 
       (.I0(sum_dx[16]),
        .I1(sum_sx[16]),
        .I2(\output_temp_reg_n_0_[17] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[16]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[17]_i_1 
       (.I0(sum_dx[17]),
        .I1(sum_sx[17]),
        .I2(\output_temp_reg_n_0_[18] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[17]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[18]_i_1 
       (.I0(sum_dx[18]),
        .I1(sum_sx[18]),
        .I2(\output_temp_reg_n_0_[19] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[18]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[19]_i_1 
       (.I0(sum_dx[19]),
        .I1(sum_sx[19]),
        .I2(\output_temp_reg_n_0_[20] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[19]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[1]_i_1 
       (.I0(sum_dx[1]),
        .I1(sum_sx[1]),
        .I2(\output_temp_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[1]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[20]_i_1 
       (.I0(sum_dx[20]),
        .I1(sum_sx[20]),
        .I2(\output_temp_reg_n_0_[21] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[20]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[21]_i_1 
       (.I0(sum_dx[21]),
        .I1(sum_sx[21]),
        .I2(\output_temp_reg_n_0_[22] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[21]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[22]_i_1 
       (.I0(sum_dx[22]),
        .I1(sum_sx[22]),
        .I2(\output_temp_reg_n_0_[23] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[22]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[23]_i_1 
       (.I0(sum_dx[23]),
        .I1(sum_sx[23]),
        .I2(\output_temp_reg_n_0_[24] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[23]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[24]_i_1 
       (.I0(sum_dx[24]),
        .I1(sum_sx[24]),
        .I2(\output_temp_reg_n_0_[25] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[24]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[25]_i_1 
       (.I0(sum_dx[25]),
        .I1(sum_sx[25]),
        .I2(\output_temp_reg_n_0_[26] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[25]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[26]_i_1 
       (.I0(sum_dx[26]),
        .I1(sum_sx[26]),
        .I2(\output_temp_reg_n_0_[27] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[26]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[27]_i_1 
       (.I0(sum_dx[27]),
        .I1(sum_sx[27]),
        .I2(\output_temp_reg_n_0_[28] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[27]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[28]_i_1 
       (.I0(sum_dx[28]),
        .I1(sum_sx[28]),
        .I2(\output_temp_reg_n_0_[29] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[28]));
  LUT6 #(
    .INIT(64'hFFFBFBFF00080800)) 
    \output_temp[29]_i_1 
       (.I0(output_temp[29]),
        .I1(\output_temp[29]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(\output_temp_reg_n_0_[29] ),
        .O(\output_temp[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[29]_i_2 
       (.I0(sum_dx[29]),
        .I1(sum_sx[29]),
        .I2(\output_temp_reg_n_0_[29] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \output_temp[29]_i_3 
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .I2(is_filtering),
        .O(\output_temp[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[2]_i_1 
       (.I0(sum_dx[2]),
        .I1(sum_sx[2]),
        .I2(\output_temp_reg_n_0_[3] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[2]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[3]_i_1 
       (.I0(sum_dx[3]),
        .I1(sum_sx[3]),
        .I2(\output_temp_reg_n_0_[4] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[3]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[4]_i_1 
       (.I0(sum_dx[4]),
        .I1(sum_sx[4]),
        .I2(\output_temp_reg_n_0_[5] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[4]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[5]_i_1 
       (.I0(sum_dx[5]),
        .I1(sum_sx[5]),
        .I2(\output_temp_reg_n_0_[6] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[5]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[6]_i_1 
       (.I0(sum_dx[6]),
        .I1(sum_sx[6]),
        .I2(\output_temp_reg_n_0_[7] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[6]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[7]_i_1 
       (.I0(sum_dx[7]),
        .I1(sum_sx[7]),
        .I2(\output_temp_reg_n_0_[8] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[7]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[8]_i_1 
       (.I0(sum_dx[8]),
        .I1(sum_sx[8]),
        .I2(\output_temp_reg_n_0_[9] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[8]));
  LUT6 #(
    .INIT(64'h0000F0F0F0CCAAAA)) 
    \output_temp[9]_i_1 
       (.I0(sum_dx[9]),
        .I1(sum_sx[9]),
        .I2(\output_temp_reg_n_0_[10] ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(output_temp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[0] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[0]),
        .Q(\output_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[10] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[10]),
        .Q(\output_temp_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[11] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[11]),
        .Q(\output_temp_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[12] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[12]),
        .Q(\output_temp_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[13] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[13]),
        .Q(\output_temp_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[14] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[14]),
        .Q(\output_temp_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[15] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[15]),
        .Q(\output_temp_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[16] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[16]),
        .Q(\output_temp_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[17] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[17]),
        .Q(\output_temp_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[18] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[18]),
        .Q(\output_temp_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[19] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[19]),
        .Q(\output_temp_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[1] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[1]),
        .Q(\output_temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[20] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[20]),
        .Q(\output_temp_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[21] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[21]),
        .Q(\output_temp_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[22] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[22]),
        .Q(\output_temp_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[23] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[23]),
        .Q(\output_temp_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[24] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[24]),
        .Q(\output_temp_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[25] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[25]),
        .Q(\output_temp_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[26] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[26]),
        .Q(\output_temp_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[27] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[27]),
        .Q(\output_temp_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[28] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[28]),
        .Q(\output_temp_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\output_temp[29]_i_1_n_0 ),
        .Q(\output_temp_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[2] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[2]),
        .Q(\output_temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[3] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[3]),
        .Q(\output_temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[4] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[4]),
        .Q(\output_temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[5] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[5]),
        .Q(\output_temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[6] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[6]),
        .Q(\output_temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[7] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[7]),
        .Q(\output_temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[8] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[8]),
        .Q(\output_temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_temp_reg[9] 
       (.C(aclk),
        .CE(counter0),
        .D(output_temp[9]),
        .Q(\output_temp_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    s_axis_tready_INST_0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(s_axis_tready));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry
       (.CI(1'b0),
        .CO({sum_dx0_carry_n_0,sum_dx0_carry_n_1,sum_dx0_carry_n_2,sum_dx0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry_i_1_n_0,sum_dx0_carry_i_2_n_0,sum_dx0_carry_i_3_n_0,sum_dx0_carry_i_4_n_0}),
        .O({sum_dx0_carry_n_4,sum_dx0_carry_n_5,sum_dx0_carry_n_6,sum_dx0_carry_n_7}),
        .S({sum_dx0_carry_i_5_n_0,sum_dx0_carry_i_6_n_0,sum_dx0_carry_i_7_n_0,sum_dx0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__0
       (.CI(sum_dx0_carry_n_0),
        .CO({sum_dx0_carry__0_n_0,sum_dx0_carry__0_n_1,sum_dx0_carry__0_n_2,sum_dx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry__0_i_1_n_0,sum_dx0_carry__0_i_2_n_0,sum_dx0_carry__0_i_3_n_0,sum_dx0_carry__0_i_4_n_0}),
        .O({sum_dx0_carry__0_n_4,sum_dx0_carry__0_n_5,sum_dx0_carry__0_n_6,sum_dx0_carry__0_n_7}),
        .S({sum_dx0_carry__0_i_5_n_0,sum_dx0_carry__0_i_6_n_0,sum_dx0_carry__0_i_7_n_0,sum_dx0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__0_i_1
       (.I0(sum_dx[6]),
        .I1(\mem_dx_reg[0] [6]),
        .I2(s_axis_tdata[6]),
        .O(sum_dx0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__0_i_2
       (.I0(sum_dx[5]),
        .I1(\mem_dx_reg[0] [5]),
        .I2(s_axis_tdata[5]),
        .O(sum_dx0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__0_i_3
       (.I0(sum_dx[4]),
        .I1(\mem_dx_reg[0] [4]),
        .I2(s_axis_tdata[4]),
        .O(sum_dx0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__0_i_4
       (.I0(sum_dx[3]),
        .I1(\mem_dx_reg[0] [3]),
        .I2(s_axis_tdata[3]),
        .O(sum_dx0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__0_i_5
       (.I0(s_axis_tdata[6]),
        .I1(\mem_dx_reg[0] [6]),
        .I2(sum_dx[6]),
        .I3(\mem_dx_reg[0] [7]),
        .I4(s_axis_tdata[7]),
        .I5(sum_dx[7]),
        .O(sum_dx0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__0_i_6
       (.I0(s_axis_tdata[5]),
        .I1(\mem_dx_reg[0] [5]),
        .I2(sum_dx[5]),
        .I3(\mem_dx_reg[0] [6]),
        .I4(s_axis_tdata[6]),
        .I5(sum_dx[6]),
        .O(sum_dx0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__0_i_7
       (.I0(s_axis_tdata[4]),
        .I1(\mem_dx_reg[0] [4]),
        .I2(sum_dx[4]),
        .I3(\mem_dx_reg[0] [5]),
        .I4(s_axis_tdata[5]),
        .I5(sum_dx[5]),
        .O(sum_dx0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__0_i_8
       (.I0(s_axis_tdata[3]),
        .I1(\mem_dx_reg[0] [3]),
        .I2(sum_dx[3]),
        .I3(\mem_dx_reg[0] [4]),
        .I4(s_axis_tdata[4]),
        .I5(sum_dx[4]),
        .O(sum_dx0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__1
       (.CI(sum_dx0_carry__0_n_0),
        .CO({sum_dx0_carry__1_n_0,sum_dx0_carry__1_n_1,sum_dx0_carry__1_n_2,sum_dx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry__1_i_1_n_0,sum_dx0_carry__1_i_2_n_0,sum_dx0_carry__1_i_3_n_0,sum_dx0_carry__1_i_4_n_0}),
        .O({sum_dx0_carry__1_n_4,sum_dx0_carry__1_n_5,sum_dx0_carry__1_n_6,sum_dx0_carry__1_n_7}),
        .S({sum_dx0_carry__1_i_5_n_0,sum_dx0_carry__1_i_6_n_0,sum_dx0_carry__1_i_7_n_0,sum_dx0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__1_i_1
       (.I0(sum_dx[10]),
        .I1(\mem_dx_reg[0] [10]),
        .I2(s_axis_tdata[10]),
        .O(sum_dx0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__1_i_2
       (.I0(sum_dx[9]),
        .I1(\mem_dx_reg[0] [9]),
        .I2(s_axis_tdata[9]),
        .O(sum_dx0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__1_i_3
       (.I0(sum_dx[8]),
        .I1(\mem_dx_reg[0] [8]),
        .I2(s_axis_tdata[8]),
        .O(sum_dx0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__1_i_4
       (.I0(sum_dx[7]),
        .I1(\mem_dx_reg[0] [7]),
        .I2(s_axis_tdata[7]),
        .O(sum_dx0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__1_i_5
       (.I0(s_axis_tdata[10]),
        .I1(\mem_dx_reg[0] [10]),
        .I2(sum_dx[10]),
        .I3(\mem_dx_reg[0] [11]),
        .I4(s_axis_tdata[11]),
        .I5(sum_dx[11]),
        .O(sum_dx0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__1_i_6
       (.I0(s_axis_tdata[9]),
        .I1(\mem_dx_reg[0] [9]),
        .I2(sum_dx[9]),
        .I3(\mem_dx_reg[0] [10]),
        .I4(s_axis_tdata[10]),
        .I5(sum_dx[10]),
        .O(sum_dx0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__1_i_7
       (.I0(s_axis_tdata[8]),
        .I1(\mem_dx_reg[0] [8]),
        .I2(sum_dx[8]),
        .I3(\mem_dx_reg[0] [9]),
        .I4(s_axis_tdata[9]),
        .I5(sum_dx[9]),
        .O(sum_dx0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__1_i_8
       (.I0(s_axis_tdata[7]),
        .I1(\mem_dx_reg[0] [7]),
        .I2(sum_dx[7]),
        .I3(\mem_dx_reg[0] [8]),
        .I4(s_axis_tdata[8]),
        .I5(sum_dx[8]),
        .O(sum_dx0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__2
       (.CI(sum_dx0_carry__1_n_0),
        .CO({sum_dx0_carry__2_n_0,sum_dx0_carry__2_n_1,sum_dx0_carry__2_n_2,sum_dx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry__2_i_1_n_0,sum_dx0_carry__2_i_2_n_0,sum_dx0_carry__2_i_3_n_0,sum_dx0_carry__2_i_4_n_0}),
        .O({sum_dx0_carry__2_n_4,sum_dx0_carry__2_n_5,sum_dx0_carry__2_n_6,sum_dx0_carry__2_n_7}),
        .S({sum_dx0_carry__2_i_5_n_0,sum_dx0_carry__2_i_6_n_0,sum_dx0_carry__2_i_7_n_0,sum_dx0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__2_i_1
       (.I0(sum_dx[14]),
        .I1(\mem_dx_reg[0] [14]),
        .I2(s_axis_tdata[14]),
        .O(sum_dx0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__2_i_2
       (.I0(sum_dx[13]),
        .I1(\mem_dx_reg[0] [13]),
        .I2(s_axis_tdata[13]),
        .O(sum_dx0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__2_i_3
       (.I0(sum_dx[12]),
        .I1(\mem_dx_reg[0] [12]),
        .I2(s_axis_tdata[12]),
        .O(sum_dx0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__2_i_4
       (.I0(sum_dx[11]),
        .I1(\mem_dx_reg[0] [11]),
        .I2(s_axis_tdata[11]),
        .O(sum_dx0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__2_i_5
       (.I0(s_axis_tdata[14]),
        .I1(\mem_dx_reg[0] [14]),
        .I2(sum_dx[14]),
        .I3(\mem_dx_reg[0] [15]),
        .I4(s_axis_tdata[15]),
        .I5(sum_dx[15]),
        .O(sum_dx0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__2_i_6
       (.I0(s_axis_tdata[13]),
        .I1(\mem_dx_reg[0] [13]),
        .I2(sum_dx[13]),
        .I3(\mem_dx_reg[0] [14]),
        .I4(s_axis_tdata[14]),
        .I5(sum_dx[14]),
        .O(sum_dx0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__2_i_7
       (.I0(s_axis_tdata[12]),
        .I1(\mem_dx_reg[0] [12]),
        .I2(sum_dx[12]),
        .I3(\mem_dx_reg[0] [13]),
        .I4(s_axis_tdata[13]),
        .I5(sum_dx[13]),
        .O(sum_dx0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__2_i_8
       (.I0(s_axis_tdata[11]),
        .I1(\mem_dx_reg[0] [11]),
        .I2(sum_dx[11]),
        .I3(\mem_dx_reg[0] [12]),
        .I4(s_axis_tdata[12]),
        .I5(sum_dx[12]),
        .O(sum_dx0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__3
       (.CI(sum_dx0_carry__2_n_0),
        .CO({sum_dx0_carry__3_n_0,sum_dx0_carry__3_n_1,sum_dx0_carry__3_n_2,sum_dx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry__3_i_1_n_0,sum_dx0_carry__3_i_2_n_0,sum_dx0_carry__3_i_3_n_0,sum_dx0_carry__3_i_4_n_0}),
        .O({sum_dx0_carry__3_n_4,sum_dx0_carry__3_n_5,sum_dx0_carry__3_n_6,sum_dx0_carry__3_n_7}),
        .S({sum_dx0_carry__3_i_5_n_0,sum_dx0_carry__3_i_6_n_0,sum_dx0_carry__3_i_7_n_0,sum_dx0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__3_i_1
       (.I0(sum_dx[18]),
        .I1(\mem_dx_reg[0] [18]),
        .I2(s_axis_tdata[18]),
        .O(sum_dx0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__3_i_2
       (.I0(sum_dx[17]),
        .I1(\mem_dx_reg[0] [17]),
        .I2(s_axis_tdata[17]),
        .O(sum_dx0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__3_i_3
       (.I0(sum_dx[16]),
        .I1(\mem_dx_reg[0] [16]),
        .I2(s_axis_tdata[16]),
        .O(sum_dx0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__3_i_4
       (.I0(sum_dx[15]),
        .I1(\mem_dx_reg[0] [15]),
        .I2(s_axis_tdata[15]),
        .O(sum_dx0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__3_i_5
       (.I0(s_axis_tdata[18]),
        .I1(\mem_dx_reg[0] [18]),
        .I2(sum_dx[18]),
        .I3(\mem_dx_reg[0] [19]),
        .I4(s_axis_tdata[19]),
        .I5(sum_dx[19]),
        .O(sum_dx0_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__3_i_6
       (.I0(s_axis_tdata[17]),
        .I1(\mem_dx_reg[0] [17]),
        .I2(sum_dx[17]),
        .I3(\mem_dx_reg[0] [18]),
        .I4(s_axis_tdata[18]),
        .I5(sum_dx[18]),
        .O(sum_dx0_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__3_i_7
       (.I0(s_axis_tdata[16]),
        .I1(\mem_dx_reg[0] [16]),
        .I2(sum_dx[16]),
        .I3(\mem_dx_reg[0] [17]),
        .I4(s_axis_tdata[17]),
        .I5(sum_dx[17]),
        .O(sum_dx0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__3_i_8
       (.I0(s_axis_tdata[15]),
        .I1(\mem_dx_reg[0] [15]),
        .I2(sum_dx[15]),
        .I3(\mem_dx_reg[0] [16]),
        .I4(s_axis_tdata[16]),
        .I5(sum_dx[16]),
        .O(sum_dx0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__4
       (.CI(sum_dx0_carry__3_n_0),
        .CO({sum_dx0_carry__4_n_0,sum_dx0_carry__4_n_1,sum_dx0_carry__4_n_2,sum_dx0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx0_carry__4_i_1_n_0,sum_dx0_carry__4_i_2_n_0,sum_dx0_carry__4_i_3_n_0,sum_dx0_carry__4_i_4_n_0}),
        .O({sum_dx0_carry__4_n_4,sum_dx0_carry__4_n_5,sum_dx0_carry__4_n_6,sum_dx0_carry__4_n_7}),
        .S({sum_dx0_carry__4_i_5_n_0,sum_dx0_carry__4_i_6_n_0,sum_dx0_carry__4_i_7_n_0,sum_dx0_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__4_i_1
       (.I0(sum_dx[22]),
        .I1(\mem_dx_reg[0] [22]),
        .I2(s_axis_tdata[22]),
        .O(sum_dx0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__4_i_2
       (.I0(sum_dx[21]),
        .I1(\mem_dx_reg[0] [21]),
        .I2(s_axis_tdata[21]),
        .O(sum_dx0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__4_i_3
       (.I0(sum_dx[20]),
        .I1(\mem_dx_reg[0] [20]),
        .I2(s_axis_tdata[20]),
        .O(sum_dx0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__4_i_4
       (.I0(sum_dx[19]),
        .I1(\mem_dx_reg[0] [19]),
        .I2(s_axis_tdata[19]),
        .O(sum_dx0_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__4_i_5
       (.I0(s_axis_tdata[22]),
        .I1(\mem_dx_reg[0] [22]),
        .I2(sum_dx[22]),
        .I3(\mem_dx_reg[0] [23]),
        .I4(s_axis_tdata[23]),
        .I5(sum_dx[23]),
        .O(sum_dx0_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__4_i_6
       (.I0(s_axis_tdata[21]),
        .I1(\mem_dx_reg[0] [21]),
        .I2(sum_dx[21]),
        .I3(\mem_dx_reg[0] [22]),
        .I4(s_axis_tdata[22]),
        .I5(sum_dx[22]),
        .O(sum_dx0_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__4_i_7
       (.I0(s_axis_tdata[20]),
        .I1(\mem_dx_reg[0] [20]),
        .I2(sum_dx[20]),
        .I3(\mem_dx_reg[0] [21]),
        .I4(s_axis_tdata[21]),
        .I5(sum_dx[21]),
        .O(sum_dx0_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry__4_i_8
       (.I0(s_axis_tdata[19]),
        .I1(\mem_dx_reg[0] [19]),
        .I2(sum_dx[19]),
        .I3(\mem_dx_reg[0] [20]),
        .I4(s_axis_tdata[20]),
        .I5(sum_dx[20]),
        .O(sum_dx0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__5
       (.CI(sum_dx0_carry__4_n_0),
        .CO({sum_dx0_carry__5_n_0,sum_dx0_carry__5_n_1,sum_dx0_carry__5_n_2,sum_dx0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({sum_dx[26:24],sum_dx0_carry__5_i_1_n_0}),
        .O({sum_dx0_carry__5_n_4,sum_dx0_carry__5_n_5,sum_dx0_carry__5_n_6,sum_dx0_carry__5_n_7}),
        .S({sum_dx0_carry__5_i_2_n_0,sum_dx0_carry__5_i_3_n_0,sum_dx0_carry__5_i_4_n_0,sum_dx0_carry__5_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry__5_i_1
       (.I0(sum_dx[23]),
        .I1(s_axis_tdata[23]),
        .I2(\mem_dx_reg[0] [23]),
        .O(sum_dx0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry__5_i_2
       (.I0(sum_dx[26]),
        .I1(sum_dx[27]),
        .O(sum_dx0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry__5_i_3
       (.I0(sum_dx[25]),
        .I1(sum_dx[26]),
        .O(sum_dx0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry__5_i_4
       (.I0(sum_dx[24]),
        .I1(sum_dx[25]),
        .O(sum_dx0_carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'hB24D)) 
    sum_dx0_carry__5_i_5
       (.I0(\mem_dx_reg[0] [23]),
        .I1(s_axis_tdata[23]),
        .I2(sum_dx[23]),
        .I3(sum_dx[24]),
        .O(sum_dx0_carry__5_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_dx0_carry__6
       (.CI(sum_dx0_carry__5_n_0),
        .CO({NLW_sum_dx0_carry__6_CO_UNCONNECTED[3:1],sum_dx0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_dx[27]}),
        .O({NLW_sum_dx0_carry__6_O_UNCONNECTED[3:2],sum_dx0_carry__6_n_6,sum_dx0_carry__6_n_7}),
        .S({1'b0,1'b0,sum_dx0_carry__6_i_1_n_0,sum_dx0_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry__6_i_1
       (.I0(sum_dx[28]),
        .I1(sum_dx[29]),
        .O(sum_dx0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry__6_i_2
       (.I0(sum_dx[27]),
        .I1(sum_dx[28]),
        .O(sum_dx0_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry_i_1
       (.I0(sum_dx[2]),
        .I1(\mem_dx_reg[0] [2]),
        .I2(s_axis_tdata[2]),
        .O(sum_dx0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_dx0_carry_i_2
       (.I0(sum_dx[1]),
        .I1(\mem_dx_reg[0] [1]),
        .I2(s_axis_tdata[1]),
        .O(sum_dx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sum_dx0_carry_i_3
       (.I0(s_axis_tdata[0]),
        .I1(sum_dx[0]),
        .O(sum_dx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_dx0_carry_i_4
       (.I0(s_axis_tdata[0]),
        .I1(sum_dx[0]),
        .O(sum_dx0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry_i_5
       (.I0(s_axis_tdata[2]),
        .I1(\mem_dx_reg[0] [2]),
        .I2(sum_dx[2]),
        .I3(\mem_dx_reg[0] [3]),
        .I4(s_axis_tdata[3]),
        .I5(sum_dx[3]),
        .O(sum_dx0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_dx0_carry_i_6
       (.I0(s_axis_tdata[1]),
        .I1(\mem_dx_reg[0] [1]),
        .I2(sum_dx[1]),
        .I3(\mem_dx_reg[0] [2]),
        .I4(s_axis_tdata[2]),
        .I5(sum_dx[2]),
        .O(sum_dx0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    sum_dx0_carry_i_7
       (.I0(sum_dx[0]),
        .I1(s_axis_tdata[0]),
        .I2(\mem_dx_reg[0] [1]),
        .I3(s_axis_tdata[1]),
        .I4(sum_dx[1]),
        .O(sum_dx0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_dx0_carry_i_8
       (.I0(sum_dx[0]),
        .I1(s_axis_tdata[0]),
        .I2(\mem_dx_reg[0] [0]),
        .O(sum_dx0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \sum_dx[29]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(is_filtering),
        .I4(aresetn),
        .I5(s_axis_tvalid),
        .O(\mem_dx_reg[31]0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[0] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry_n_7),
        .Q(sum_dx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[10] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__1_n_5),
        .Q(sum_dx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[11] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__1_n_4),
        .Q(sum_dx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[12] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__2_n_7),
        .Q(sum_dx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[13] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__2_n_6),
        .Q(sum_dx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[14] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__2_n_5),
        .Q(sum_dx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[15] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__2_n_4),
        .Q(sum_dx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[16] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__3_n_7),
        .Q(sum_dx[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[17] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__3_n_6),
        .Q(sum_dx[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[18] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__3_n_5),
        .Q(sum_dx[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[19] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__3_n_4),
        .Q(sum_dx[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[1] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry_n_6),
        .Q(sum_dx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[20] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__4_n_7),
        .Q(sum_dx[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[21] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__4_n_6),
        .Q(sum_dx[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[22] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__4_n_5),
        .Q(sum_dx[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[23] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__4_n_4),
        .Q(sum_dx[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[24] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__5_n_7),
        .Q(sum_dx[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[25] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__5_n_6),
        .Q(sum_dx[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[26] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__5_n_5),
        .Q(sum_dx[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[27] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__5_n_4),
        .Q(sum_dx[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[28] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__6_n_7),
        .Q(sum_dx[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[29] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__6_n_6),
        .Q(sum_dx[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[2] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry_n_5),
        .Q(sum_dx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[3] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry_n_4),
        .Q(sum_dx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[4] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__0_n_7),
        .Q(sum_dx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[5] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__0_n_6),
        .Q(sum_dx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[6] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__0_n_5),
        .Q(sum_dx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[7] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__0_n_4),
        .Q(sum_dx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[8] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__1_n_7),
        .Q(sum_dx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_dx_reg[9] 
       (.C(aclk),
        .CE(\mem_dx_reg[31]0 ),
        .D(sum_dx0_carry__1_n_6),
        .Q(sum_dx[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry
       (.CI(1'b0),
        .CO({sum_sx0_carry_n_0,sum_sx0_carry_n_1,sum_sx0_carry_n_2,sum_sx0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry_i_1_n_0,sum_sx0_carry_i_2_n_0,sum_sx0_carry_i_3_n_0,sum_sx0_carry_i_4_n_0}),
        .O({sum_sx0_carry_n_4,sum_sx0_carry_n_5,sum_sx0_carry_n_6,sum_sx0_carry_n_7}),
        .S({sum_sx0_carry_i_5_n_0,sum_sx0_carry_i_6_n_0,sum_sx0_carry_i_7_n_0,sum_sx0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__0
       (.CI(sum_sx0_carry_n_0),
        .CO({sum_sx0_carry__0_n_0,sum_sx0_carry__0_n_1,sum_sx0_carry__0_n_2,sum_sx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry__0_i_1_n_0,sum_sx0_carry__0_i_2_n_0,sum_sx0_carry__0_i_3_n_0,sum_sx0_carry__0_i_4_n_0}),
        .O({sum_sx0_carry__0_n_4,sum_sx0_carry__0_n_5,sum_sx0_carry__0_n_6,sum_sx0_carry__0_n_7}),
        .S({sum_sx0_carry__0_i_5_n_0,sum_sx0_carry__0_i_6_n_0,sum_sx0_carry__0_i_7_n_0,sum_sx0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__0_i_1
       (.I0(s_axis_tdata[6]),
        .I1(\mem_sx_reg[0] [6]),
        .I2(sum_sx[6]),
        .O(sum_sx0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__0_i_2
       (.I0(s_axis_tdata[5]),
        .I1(\mem_sx_reg[0] [5]),
        .I2(sum_sx[5]),
        .O(sum_sx0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__0_i_3
       (.I0(s_axis_tdata[4]),
        .I1(\mem_sx_reg[0] [4]),
        .I2(sum_sx[4]),
        .O(sum_sx0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__0_i_4
       (.I0(s_axis_tdata[3]),
        .I1(\mem_sx_reg[0] [3]),
        .I2(sum_sx[3]),
        .O(sum_sx0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__0_i_5
       (.I0(sum_sx[6]),
        .I1(\mem_sx_reg[0] [6]),
        .I2(s_axis_tdata[6]),
        .I3(\mem_sx_reg[0] [7]),
        .I4(sum_sx[7]),
        .I5(s_axis_tdata[7]),
        .O(sum_sx0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__0_i_6
       (.I0(sum_sx[5]),
        .I1(\mem_sx_reg[0] [5]),
        .I2(s_axis_tdata[5]),
        .I3(\mem_sx_reg[0] [6]),
        .I4(sum_sx[6]),
        .I5(s_axis_tdata[6]),
        .O(sum_sx0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__0_i_7
       (.I0(sum_sx[4]),
        .I1(\mem_sx_reg[0] [4]),
        .I2(s_axis_tdata[4]),
        .I3(\mem_sx_reg[0] [5]),
        .I4(sum_sx[5]),
        .I5(s_axis_tdata[5]),
        .O(sum_sx0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__0_i_8
       (.I0(sum_sx[3]),
        .I1(\mem_sx_reg[0] [3]),
        .I2(s_axis_tdata[3]),
        .I3(\mem_sx_reg[0] [4]),
        .I4(sum_sx[4]),
        .I5(s_axis_tdata[4]),
        .O(sum_sx0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__1
       (.CI(sum_sx0_carry__0_n_0),
        .CO({sum_sx0_carry__1_n_0,sum_sx0_carry__1_n_1,sum_sx0_carry__1_n_2,sum_sx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry__1_i_1_n_0,sum_sx0_carry__1_i_2_n_0,sum_sx0_carry__1_i_3_n_0,sum_sx0_carry__1_i_4_n_0}),
        .O({sum_sx0_carry__1_n_4,sum_sx0_carry__1_n_5,sum_sx0_carry__1_n_6,sum_sx0_carry__1_n_7}),
        .S({sum_sx0_carry__1_i_5_n_0,sum_sx0_carry__1_i_6_n_0,sum_sx0_carry__1_i_7_n_0,sum_sx0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__1_i_1
       (.I0(s_axis_tdata[10]),
        .I1(\mem_sx_reg[0] [10]),
        .I2(sum_sx[10]),
        .O(sum_sx0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__1_i_2
       (.I0(s_axis_tdata[9]),
        .I1(\mem_sx_reg[0] [9]),
        .I2(sum_sx[9]),
        .O(sum_sx0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__1_i_3
       (.I0(s_axis_tdata[8]),
        .I1(\mem_sx_reg[0] [8]),
        .I2(sum_sx[8]),
        .O(sum_sx0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__1_i_4
       (.I0(s_axis_tdata[7]),
        .I1(\mem_sx_reg[0] [7]),
        .I2(sum_sx[7]),
        .O(sum_sx0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__1_i_5
       (.I0(sum_sx[10]),
        .I1(\mem_sx_reg[0] [10]),
        .I2(s_axis_tdata[10]),
        .I3(\mem_sx_reg[0] [11]),
        .I4(sum_sx[11]),
        .I5(s_axis_tdata[11]),
        .O(sum_sx0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__1_i_6
       (.I0(sum_sx[9]),
        .I1(\mem_sx_reg[0] [9]),
        .I2(s_axis_tdata[9]),
        .I3(\mem_sx_reg[0] [10]),
        .I4(sum_sx[10]),
        .I5(s_axis_tdata[10]),
        .O(sum_sx0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__1_i_7
       (.I0(sum_sx[8]),
        .I1(\mem_sx_reg[0] [8]),
        .I2(s_axis_tdata[8]),
        .I3(\mem_sx_reg[0] [9]),
        .I4(sum_sx[9]),
        .I5(s_axis_tdata[9]),
        .O(sum_sx0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__1_i_8
       (.I0(sum_sx[7]),
        .I1(\mem_sx_reg[0] [7]),
        .I2(s_axis_tdata[7]),
        .I3(\mem_sx_reg[0] [8]),
        .I4(sum_sx[8]),
        .I5(s_axis_tdata[8]),
        .O(sum_sx0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__2
       (.CI(sum_sx0_carry__1_n_0),
        .CO({sum_sx0_carry__2_n_0,sum_sx0_carry__2_n_1,sum_sx0_carry__2_n_2,sum_sx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry__2_i_1_n_0,sum_sx0_carry__2_i_2_n_0,sum_sx0_carry__2_i_3_n_0,sum_sx0_carry__2_i_4_n_0}),
        .O({sum_sx0_carry__2_n_4,sum_sx0_carry__2_n_5,sum_sx0_carry__2_n_6,sum_sx0_carry__2_n_7}),
        .S({sum_sx0_carry__2_i_5_n_0,sum_sx0_carry__2_i_6_n_0,sum_sx0_carry__2_i_7_n_0,sum_sx0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__2_i_1
       (.I0(s_axis_tdata[14]),
        .I1(\mem_sx_reg[0] [14]),
        .I2(sum_sx[14]),
        .O(sum_sx0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__2_i_2
       (.I0(s_axis_tdata[13]),
        .I1(\mem_sx_reg[0] [13]),
        .I2(sum_sx[13]),
        .O(sum_sx0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__2_i_3
       (.I0(s_axis_tdata[12]),
        .I1(\mem_sx_reg[0] [12]),
        .I2(sum_sx[12]),
        .O(sum_sx0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__2_i_4
       (.I0(s_axis_tdata[11]),
        .I1(\mem_sx_reg[0] [11]),
        .I2(sum_sx[11]),
        .O(sum_sx0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__2_i_5
       (.I0(sum_sx[14]),
        .I1(\mem_sx_reg[0] [14]),
        .I2(s_axis_tdata[14]),
        .I3(\mem_sx_reg[0] [15]),
        .I4(sum_sx[15]),
        .I5(s_axis_tdata[15]),
        .O(sum_sx0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__2_i_6
       (.I0(sum_sx[13]),
        .I1(\mem_sx_reg[0] [13]),
        .I2(s_axis_tdata[13]),
        .I3(\mem_sx_reg[0] [14]),
        .I4(sum_sx[14]),
        .I5(s_axis_tdata[14]),
        .O(sum_sx0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__2_i_7
       (.I0(sum_sx[12]),
        .I1(\mem_sx_reg[0] [12]),
        .I2(s_axis_tdata[12]),
        .I3(\mem_sx_reg[0] [13]),
        .I4(sum_sx[13]),
        .I5(s_axis_tdata[13]),
        .O(sum_sx0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__2_i_8
       (.I0(sum_sx[11]),
        .I1(\mem_sx_reg[0] [11]),
        .I2(s_axis_tdata[11]),
        .I3(\mem_sx_reg[0] [12]),
        .I4(sum_sx[12]),
        .I5(s_axis_tdata[12]),
        .O(sum_sx0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__3
       (.CI(sum_sx0_carry__2_n_0),
        .CO({sum_sx0_carry__3_n_0,sum_sx0_carry__3_n_1,sum_sx0_carry__3_n_2,sum_sx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry__3_i_1_n_0,sum_sx0_carry__3_i_2_n_0,sum_sx0_carry__3_i_3_n_0,sum_sx0_carry__3_i_4_n_0}),
        .O({sum_sx0_carry__3_n_4,sum_sx0_carry__3_n_5,sum_sx0_carry__3_n_6,sum_sx0_carry__3_n_7}),
        .S({sum_sx0_carry__3_i_5_n_0,sum_sx0_carry__3_i_6_n_0,sum_sx0_carry__3_i_7_n_0,sum_sx0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__3_i_1
       (.I0(s_axis_tdata[18]),
        .I1(\mem_sx_reg[0] [18]),
        .I2(sum_sx[18]),
        .O(sum_sx0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__3_i_2
       (.I0(s_axis_tdata[17]),
        .I1(\mem_sx_reg[0] [17]),
        .I2(sum_sx[17]),
        .O(sum_sx0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__3_i_3
       (.I0(s_axis_tdata[16]),
        .I1(\mem_sx_reg[0] [16]),
        .I2(sum_sx[16]),
        .O(sum_sx0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__3_i_4
       (.I0(s_axis_tdata[15]),
        .I1(\mem_sx_reg[0] [15]),
        .I2(sum_sx[15]),
        .O(sum_sx0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__3_i_5
       (.I0(sum_sx[18]),
        .I1(\mem_sx_reg[0] [18]),
        .I2(s_axis_tdata[18]),
        .I3(\mem_sx_reg[0] [19]),
        .I4(sum_sx[19]),
        .I5(s_axis_tdata[19]),
        .O(sum_sx0_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__3_i_6
       (.I0(sum_sx[17]),
        .I1(\mem_sx_reg[0] [17]),
        .I2(s_axis_tdata[17]),
        .I3(\mem_sx_reg[0] [18]),
        .I4(sum_sx[18]),
        .I5(s_axis_tdata[18]),
        .O(sum_sx0_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__3_i_7
       (.I0(sum_sx[16]),
        .I1(\mem_sx_reg[0] [16]),
        .I2(s_axis_tdata[16]),
        .I3(\mem_sx_reg[0] [17]),
        .I4(sum_sx[17]),
        .I5(s_axis_tdata[17]),
        .O(sum_sx0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__3_i_8
       (.I0(sum_sx[15]),
        .I1(\mem_sx_reg[0] [15]),
        .I2(s_axis_tdata[15]),
        .I3(\mem_sx_reg[0] [16]),
        .I4(sum_sx[16]),
        .I5(s_axis_tdata[16]),
        .O(sum_sx0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__4
       (.CI(sum_sx0_carry__3_n_0),
        .CO({sum_sx0_carry__4_n_0,sum_sx0_carry__4_n_1,sum_sx0_carry__4_n_2,sum_sx0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx0_carry__4_i_1_n_0,sum_sx0_carry__4_i_2_n_0,sum_sx0_carry__4_i_3_n_0,sum_sx0_carry__4_i_4_n_0}),
        .O({sum_sx0_carry__4_n_4,sum_sx0_carry__4_n_5,sum_sx0_carry__4_n_6,sum_sx0_carry__4_n_7}),
        .S({sum_sx0_carry__4_i_5_n_0,sum_sx0_carry__4_i_6_n_0,sum_sx0_carry__4_i_7_n_0,sum_sx0_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__4_i_1
       (.I0(s_axis_tdata[22]),
        .I1(\mem_sx_reg[0] [22]),
        .I2(sum_sx[22]),
        .O(sum_sx0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__4_i_2
       (.I0(s_axis_tdata[21]),
        .I1(\mem_sx_reg[0] [21]),
        .I2(sum_sx[21]),
        .O(sum_sx0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__4_i_3
       (.I0(s_axis_tdata[20]),
        .I1(\mem_sx_reg[0] [20]),
        .I2(sum_sx[20]),
        .O(sum_sx0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry__4_i_4
       (.I0(s_axis_tdata[19]),
        .I1(\mem_sx_reg[0] [19]),
        .I2(sum_sx[19]),
        .O(sum_sx0_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__4_i_5
       (.I0(sum_sx[22]),
        .I1(\mem_sx_reg[0] [22]),
        .I2(s_axis_tdata[22]),
        .I3(\mem_sx_reg[0] [23]),
        .I4(sum_sx[23]),
        .I5(s_axis_tdata[23]),
        .O(sum_sx0_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__4_i_6
       (.I0(sum_sx[21]),
        .I1(\mem_sx_reg[0] [21]),
        .I2(s_axis_tdata[21]),
        .I3(\mem_sx_reg[0] [22]),
        .I4(sum_sx[22]),
        .I5(s_axis_tdata[22]),
        .O(sum_sx0_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__4_i_7
       (.I0(sum_sx[20]),
        .I1(\mem_sx_reg[0] [20]),
        .I2(s_axis_tdata[20]),
        .I3(\mem_sx_reg[0] [21]),
        .I4(sum_sx[21]),
        .I5(s_axis_tdata[21]),
        .O(sum_sx0_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry__4_i_8
       (.I0(sum_sx[19]),
        .I1(\mem_sx_reg[0] [19]),
        .I2(s_axis_tdata[19]),
        .I3(\mem_sx_reg[0] [20]),
        .I4(sum_sx[20]),
        .I5(s_axis_tdata[20]),
        .O(sum_sx0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__5
       (.CI(sum_sx0_carry__4_n_0),
        .CO({sum_sx0_carry__5_n_0,sum_sx0_carry__5_n_1,sum_sx0_carry__5_n_2,sum_sx0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({sum_sx[26:24],sum_sx0_carry__5_i_1_n_0}),
        .O({sum_sx0_carry__5_n_4,sum_sx0_carry__5_n_5,sum_sx0_carry__5_n_6,sum_sx0_carry__5_n_7}),
        .S({sum_sx0_carry__5_i_2_n_0,sum_sx0_carry__5_i_3_n_0,sum_sx0_carry__5_i_4_n_0,sum_sx0_carry__5_i_5_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    sum_sx0_carry__5_i_1
       (.I0(s_axis_tdata[23]),
        .I1(sum_sx[23]),
        .I2(\mem_sx_reg[0] [23]),
        .O(sum_sx0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry__5_i_2
       (.I0(sum_sx[26]),
        .I1(sum_sx[27]),
        .O(sum_sx0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry__5_i_3
       (.I0(sum_sx[25]),
        .I1(sum_sx[26]),
        .O(sum_sx0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry__5_i_4
       (.I0(sum_sx[24]),
        .I1(sum_sx[25]),
        .O(sum_sx0_carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    sum_sx0_carry__5_i_5
       (.I0(\mem_sx_reg[0] [23]),
        .I1(sum_sx[23]),
        .I2(s_axis_tdata[23]),
        .I3(sum_sx[24]),
        .O(sum_sx0_carry__5_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_sx0_carry__6
       (.CI(sum_sx0_carry__5_n_0),
        .CO({NLW_sum_sx0_carry__6_CO_UNCONNECTED[3:1],sum_sx0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_sx[27]}),
        .O({NLW_sum_sx0_carry__6_O_UNCONNECTED[3:2],sum_sx0_carry__6_n_6,sum_sx0_carry__6_n_7}),
        .S({1'b0,1'b0,sum_sx0_carry__6_i_1_n_0,sum_sx0_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry__6_i_1
       (.I0(sum_sx[28]),
        .I1(sum_sx[29]),
        .O(sum_sx0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry__6_i_2
       (.I0(sum_sx[27]),
        .I1(sum_sx[28]),
        .O(sum_sx0_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry_i_1
       (.I0(s_axis_tdata[2]),
        .I1(\mem_sx_reg[0] [2]),
        .I2(sum_sx[2]),
        .O(sum_sx0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sum_sx0_carry_i_2
       (.I0(s_axis_tdata[1]),
        .I1(\mem_sx_reg[0] [1]),
        .I2(sum_sx[1]),
        .O(sum_sx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sum_sx0_carry_i_3
       (.I0(s_axis_tdata[0]),
        .I1(sum_sx[0]),
        .O(sum_sx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_sx0_carry_i_4
       (.I0(sum_sx[0]),
        .I1(s_axis_tdata[0]),
        .O(sum_sx0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry_i_5
       (.I0(sum_sx[2]),
        .I1(\mem_sx_reg[0] [2]),
        .I2(s_axis_tdata[2]),
        .I3(\mem_sx_reg[0] [3]),
        .I4(sum_sx[3]),
        .I5(s_axis_tdata[3]),
        .O(sum_sx0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    sum_sx0_carry_i_6
       (.I0(sum_sx[1]),
        .I1(\mem_sx_reg[0] [1]),
        .I2(s_axis_tdata[1]),
        .I3(\mem_sx_reg[0] [2]),
        .I4(sum_sx[2]),
        .I5(s_axis_tdata[2]),
        .O(sum_sx0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    sum_sx0_carry_i_7
       (.I0(sum_sx[0]),
        .I1(s_axis_tdata[0]),
        .I2(\mem_sx_reg[0] [1]),
        .I3(sum_sx[1]),
        .I4(s_axis_tdata[1]),
        .O(sum_sx0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_sx0_carry_i_8
       (.I0(s_axis_tdata[0]),
        .I1(sum_sx[0]),
        .I2(\mem_sx_reg[0] [0]),
        .O(sum_sx0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \sum_sx[29]_i_1 
       (.I0(is_filtering),
        .I1(aresetn),
        .I2(s_axis_tvalid),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\mem_sx_reg[31]0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[0] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry_n_7),
        .Q(sum_sx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[10] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__1_n_5),
        .Q(sum_sx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[11] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__1_n_4),
        .Q(sum_sx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[12] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__2_n_7),
        .Q(sum_sx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[13] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__2_n_6),
        .Q(sum_sx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[14] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__2_n_5),
        .Q(sum_sx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[15] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__2_n_4),
        .Q(sum_sx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[16] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__3_n_7),
        .Q(sum_sx[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[17] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__3_n_6),
        .Q(sum_sx[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[18] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__3_n_5),
        .Q(sum_sx[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[19] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__3_n_4),
        .Q(sum_sx[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[1] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry_n_6),
        .Q(sum_sx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[20] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__4_n_7),
        .Q(sum_sx[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[21] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__4_n_6),
        .Q(sum_sx[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[22] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__4_n_5),
        .Q(sum_sx[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[23] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__4_n_4),
        .Q(sum_sx[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[24] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__5_n_7),
        .Q(sum_sx[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[25] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__5_n_6),
        .Q(sum_sx[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[26] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__5_n_5),
        .Q(sum_sx[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[27] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__5_n_4),
        .Q(sum_sx[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[28] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__6_n_7),
        .Q(sum_sx[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[29] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__6_n_6),
        .Q(sum_sx[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[2] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry_n_5),
        .Q(sum_sx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[3] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry_n_4),
        .Q(sum_sx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[4] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__0_n_7),
        .Q(sum_sx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[5] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__0_n_6),
        .Q(sum_sx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[6] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__0_n_5),
        .Q(sum_sx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[7] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__0_n_4),
        .Q(sum_sx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[8] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__1_n_7),
        .Q(sum_sx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_sx_reg[9] 
       (.C(aclk),
        .CE(\mem_sx_reg[31]0 ),
        .D(sum_sx0_carry__1_n_6),
        .Q(sum_sx[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
