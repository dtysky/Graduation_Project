set_property PACKAGE_PIN L16 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]

set_property PACKAGE_PIN U17 [get_ports pclk]
set_property IOSTANDARD LVCMOS33 [get_ports pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk]
set_property PACKAGE_PIN W16 [get_ports xclk]
set_property IOSTANDARD LVCMOS33 [get_ports xclk]

set_property PACKAGE_PIN J15 [get_ports href]
set_property PACKAGE_PIN T17 [get_ports vsync]
set_property PACKAGE_PIN Y17 [get_ports I2C_SCLK]
set_property PACKAGE_PIN H15 [get_ports I2C_SDAT]
set_property PULLUP true [get_ports I2C_SDAT]


##
set_property IOSTANDARD LVCMOS33 [get_ports href]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDAT]

set_property PACKAGE_PIN T15 [get_ports {d[0]}]
set_property PACKAGE_PIN U15 [get_ports {d[1]}]
set_property PACKAGE_PIN P14 [get_ports {d[2]}]
set_property PACKAGE_PIN V17 [get_ports {d[3]}]
set_property PACKAGE_PIN R14 [get_ports {d[4]}]
set_property PACKAGE_PIN V18 [get_ports {d[5]}]
set_property PACKAGE_PIN V12 [get_ports {d[6]}]
set_property PACKAGE_PIN V13 [get_ports {d[7]}]
##
set_property IOSTANDARD LVCMOS33 [get_ports {d[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[0]}]


##
# VGA signals
set_property PACKAGE_PIN P20 [get_ports {vga_blue[0]}]
set_property PACKAGE_PIN M20 [get_ports {vga_blue[1]}]
set_property PACKAGE_PIN K19 [get_ports {vga_blue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_blue[3]}]
set_property PACKAGE_PIN G19 [get_ports {vga_blue[4]}]
set_property PACKAGE_PIN H18 [get_ports {vga_green[0]}]
set_property PACKAGE_PIN N20 [get_ports {vga_green[1]}]
set_property PACKAGE_PIN L19 [get_ports {vga_green[2]}]
set_property PACKAGE_PIN J19 [get_ports {vga_green[3]}]
set_property PACKAGE_PIN H20 [get_ports {vga_green[4]}]
set_property PACKAGE_PIN F20 [get_ports {vga_green[5]}]
set_property PACKAGE_PIN M19 [get_ports {vga_red[0]}]
set_property PACKAGE_PIN L20 [get_ports {vga_red[1]}]
set_property PACKAGE_PIN J20 [get_ports {vga_red[2]}]
set_property PACKAGE_PIN G20 [get_ports {vga_red[3]}]
set_property PACKAGE_PIN F19 [get_ports {vga_red[4]}]
##
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[0]}]

set_property PACKAGE_PIN P19 [get_ports vga_hsync]
set_property PACKAGE_PIN R19 [get_ports vga_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]

#other
set_property PACKAGE_PIN G15 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN P15 [get_ports sel]
set_property IOSTANDARD LVCMOS33 [get_ports sel]

set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[3]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[5]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[5]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[7]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[12]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[15]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[5]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[1]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[2]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[13]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[7]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[1]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[10]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[16]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[1]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[3]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[8]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[3]}]
set_property MARK_DEBUG true [get_nets BoardPreGrid_i/Frame_0_out_enable]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[11]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[12]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[7]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[8]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[6]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[7]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[0]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[9]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[9]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[6]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[6]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[4]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[4]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[16]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[4]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[6]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[0]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[0]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[15]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[14]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[13]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[2]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[11]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[5]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_ram_addr[1]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[3]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[2]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[2]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[10]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_out_data[4]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_0_out_data[0]}]
set_property MARK_DEBUG true [get_nets {BoardPreGrid_i/Frame_1_ram_addr[14]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[2]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[1]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[5]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[3]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[7]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[4]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[6]}]
set_property MARK_DEBUG false [get_nets {BoardPreGrid_i/Bram8x320x240_0_doutb[0]}]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list BoardPreGrid_i/clk_wiz_0/clk_out3]]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {BoardPreGrid_i/Frame_0_out_data[0]} {BoardPreGrid_i/Frame_0_out_data[1]} {BoardPreGrid_i/Frame_0_out_data[2]} {BoardPreGrid_i/Frame_0_out_data[3]} {BoardPreGrid_i/Frame_0_out_data[4]} {BoardPreGrid_i/Frame_0_out_data[5]} {BoardPreGrid_i/Frame_0_out_data[6]} {BoardPreGrid_i/Frame_0_out_data[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 17 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {BoardPreGrid_i/Frame_0_ram_addr[0]} {BoardPreGrid_i/Frame_0_ram_addr[1]} {BoardPreGrid_i/Frame_0_ram_addr[2]} {BoardPreGrid_i/Frame_0_ram_addr[3]} {BoardPreGrid_i/Frame_0_ram_addr[4]} {BoardPreGrid_i/Frame_0_ram_addr[5]} {BoardPreGrid_i/Frame_0_ram_addr[6]} {BoardPreGrid_i/Frame_0_ram_addr[7]} {BoardPreGrid_i/Frame_0_ram_addr[8]} {BoardPreGrid_i/Frame_0_ram_addr[9]} {BoardPreGrid_i/Frame_0_ram_addr[10]} {BoardPreGrid_i/Frame_0_ram_addr[11]} {BoardPreGrid_i/Frame_0_ram_addr[12]} {BoardPreGrid_i/Frame_0_ram_addr[13]} {BoardPreGrid_i/Frame_0_ram_addr[14]} {BoardPreGrid_i/Frame_0_ram_addr[15]} {BoardPreGrid_i/Frame_0_ram_addr[16]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {BoardPreGrid_i/Frame_1_out_data[0]} {BoardPreGrid_i/Frame_1_out_data[1]} {BoardPreGrid_i/Frame_1_out_data[2]} {BoardPreGrid_i/Frame_1_out_data[3]} {BoardPreGrid_i/Frame_1_out_data[4]} {BoardPreGrid_i/Frame_1_out_data[5]} {BoardPreGrid_i/Frame_1_out_data[6]} {BoardPreGrid_i/Frame_1_out_data[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 17 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {BoardPreGrid_i/Frame_1_ram_addr[0]} {BoardPreGrid_i/Frame_1_ram_addr[1]} {BoardPreGrid_i/Frame_1_ram_addr[2]} {BoardPreGrid_i/Frame_1_ram_addr[3]} {BoardPreGrid_i/Frame_1_ram_addr[4]} {BoardPreGrid_i/Frame_1_ram_addr[5]} {BoardPreGrid_i/Frame_1_ram_addr[6]} {BoardPreGrid_i/Frame_1_ram_addr[7]} {BoardPreGrid_i/Frame_1_ram_addr[8]} {BoardPreGrid_i/Frame_1_ram_addr[9]} {BoardPreGrid_i/Frame_1_ram_addr[10]} {BoardPreGrid_i/Frame_1_ram_addr[11]} {BoardPreGrid_i/Frame_1_ram_addr[12]} {BoardPreGrid_i/Frame_1_ram_addr[13]} {BoardPreGrid_i/Frame_1_ram_addr[14]} {BoardPreGrid_i/Frame_1_ram_addr[15]} {BoardPreGrid_i/Frame_1_ram_addr[16]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list BoardPreGrid_i/Frame_0_out_enable]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out3]
