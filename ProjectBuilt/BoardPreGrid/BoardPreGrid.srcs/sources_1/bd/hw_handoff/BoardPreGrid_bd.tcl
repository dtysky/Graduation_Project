
################################################################
# This is a generated script based on design: BoardPreGrid
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BoardPreGrid_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1


# CHANGE DESIGN NAME HERE
set design_name BoardPreGrid

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set I2C_SCLK [ create_bd_port -dir O I2C_SCLK ]
  set I2C_SDAT [ create_bd_port -dir IO I2C_SDAT ]
  set clk_in1 [ create_bd_port -dir I -type clk clk_in1 ]
  set d [ create_bd_port -dir I -from 7 -to 0 d ]
  set href [ create_bd_port -dir I href ]
  set pclk [ create_bd_port -dir I pclk ]
  set rst_n [ create_bd_port -dir I rst_n ]
  set sel [ create_bd_port -dir I sel ]
  set vga_blue [ create_bd_port -dir O -from 3 -to 0 vga_blue ]
  set vga_green [ create_bd_port -dir O -from 3 -to 0 vga_green ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_red [ create_bd_port -dir O -from 3 -to 0 vga_red ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]
  set vsync [ create_bd_port -dir I vsync ]

  # Create instance: BoardPreGridInit_0, and set properties
  set BoardPreGridInit_0 [ create_bd_cell -type ip -vlnv dtysky:Image:BoardPreGridInit:1.0 BoardPreGridInit_0 ]

  # Create instance: Bram1x320x240_0, and set properties
  set Bram1x320x240_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram1x320x240:1.0 Bram1x320x240_0 ]

  # Create instance: Bram1x320x240_1, and set properties
  set Bram1x320x240_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram1x320x240:1.0 Bram1x320x240_1 ]

  # Create instance: Bram1x320x240_2, and set properties
  set Bram1x320x240_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram1x320x240:1.0 Bram1x320x240_2 ]

  # Create instance: Bram8x320x240_0, and set properties
  set Bram8x320x240_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram8x320x240:1.0 Bram8x320x240_0 ]

  # Create instance: Color16to24_0, and set properties
  set Color16to24_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Color16to24:1.0 Color16to24_0 ]

  # Create instance: ColorBin2Rgb_0, and set properties
  set ColorBin2Rgb_0 [ create_bd_cell -type ip -vlnv dtysky:Image:ColorBin2Rgb:1.0 ColorBin2Rgb_0 ]

  # Create instance: ColorRgb2Vga_0, and set properties
  set ColorRgb2Vga_0 [ create_bd_cell -type ip -vlnv dtysky:Image:ColorRgb2Vga:1.0 ColorRgb2Vga_0 ]

  # Create instance: DataDelay_0, and set properties
  set DataDelay_0 [ create_bd_cell -type ip -vlnv dtysky:Image:DataDelay:1.0 DataDelay_0 ]

  # Create instance: ErosionDilationBin_0, and set properties
  set ErosionDilationBin_0 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_0 ]
  set_property -dict [ list CONFIG.pip_counter {3} CONFIG.window_size {3}  ] $ErosionDilationBin_0

  # Create instance: ErosionDilationBin_1, and set properties
  set ErosionDilationBin_1 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_1 ]
  set_property -dict [ list CONFIG.window_size {5}  ] $ErosionDilationBin_1

  # Create instance: ErosionDilationBin_2, and set properties
  set ErosionDilationBin_2 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_2 ]
  set_property -dict [ list CONFIG.pip_counter {3} CONFIG.window_size {3}  ] $ErosionDilationBin_2

  # Create instance: ErosionDilationBin_3, and set properties
  set ErosionDilationBin_3 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_3 ]
  set_property -dict [ list CONFIG.pip_counter {3} CONFIG.window_size {3}  ] $ErosionDilationBin_3

  # Create instance: ErosionDilationBin_4, and set properties
  set ErosionDilationBin_4 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_4 ]
  set_property -dict [ list CONFIG.pip_counter {3} CONFIG.window_size {3}  ] $ErosionDilationBin_4

  # Create instance: ErosionDilationBin_5, and set properties
  set ErosionDilationBin_5 [ create_bd_cell -type ip -vlnv dtysky:Image:ErosionDilationBin:1.1 ErosionDilationBin_5 ]
  set_property -dict [ list CONFIG.pip_counter {3} CONFIG.window_size {3}  ] $ErosionDilationBin_5

  # Create instance: Frame_0, and set properties
  set Frame_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_0 ]
  set_property -dict [ list CONFIG.mode {1}  ] $Frame_0

  # Create instance: Frame_1, and set properties
  set Frame_1 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_1 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.row_init {1}  ] $Frame_1

  # Create instance: Frame_2, and set properties
  set Frame_2 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_2 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.mode {1}  ] $Frame_2

  # Create instance: Frame_3, and set properties
  set Frame_3 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_3 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.row_init {1}  ] $Frame_3

  # Create instance: Frame_4, and set properties
  set Frame_4 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_4 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.row_init {2}  ] $Frame_4

  # Create instance: Frame_5, and set properties
  set Frame_5 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_5 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.mode {1}  ] $Frame_5

  # Create instance: Harris_0, and set properties
  set Harris_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Harris:1.0 Harris_0 ]

  # Create instance: IICctrl_0, and set properties
  set IICctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:IICctrl:1.0 IICctrl_0 ]

  # Create instance: MatchTemplateBin_0, and set properties
  set MatchTemplateBin_0 [ create_bd_cell -type ip -vlnv dtysky:Image:MatchTemplateBin:1.0 MatchTemplateBin_0 ]

  # Create instance: MeanFitter_0, and set properties
  set MeanFitter_0 [ create_bd_cell -type ip -vlnv dtysky:Image:MeanFitter:1.0 MeanFitter_0 ]
  set_property -dict [ list CONFIG.window_size {3}  ] $MeanFitter_0

  # Create instance: Mux2_0, and set properties
  set Mux2_0 [ create_bd_cell -type ip -vlnv dtysky:user:Mux2:1.0 Mux2_0 ]
  set_property -dict [ list CONFIG.data_width {1}  ] $Mux2_0

  # Create instance: Mux2_1, and set properties
  set Mux2_1 [ create_bd_cell -type ip -vlnv dtysky:user:Mux2:1.0 Mux2_1 ]
  set_property -dict [ list CONFIG.data_width {1}  ] $Mux2_1

  # Create instance: Mux2_2, and set properties
  set Mux2_2 [ create_bd_cell -type ip -vlnv dtysky:user:Mux2:1.0 Mux2_2 ]
  set_property -dict [ list CONFIG.data_width {17}  ] $Mux2_2

  # Create instance: Or8_0, and set properties
  set Or8_0 [ create_bd_cell -type ip -vlnv dtysky:user:Or8:1.0 Or8_0 ]

  # Create instance: RGB2GRAY_0, and set properties
  set RGB2GRAY_0 [ create_bd_cell -type ip -vlnv dtysky:Image:RGB2GRAY:1.0 RGB2GRAY_0 ]

  # Create instance: Rows1x512_0, and set properties
  set Rows1x512_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Rows1x512:1.0 Rows1x512_0 ]
  set_property -dict [ list CONFIG.rows_width {3}  ] $Rows1x512_0

  # Create instance: Rows1x512_1, and set properties
  set Rows1x512_1 [ create_bd_cell -type ip -vlnv dtysky:Image:Rows1x512:1.0 Rows1x512_1 ]
  set_property -dict [ list CONFIG.rows_width {5}  ] $Rows1x512_1

  # Create instance: Rows1x512_2, and set properties
  set Rows1x512_2 [ create_bd_cell -type ip -vlnv dtysky:Image:Rows1x512:1.0 Rows1x512_2 ]
  set_property -dict [ list CONFIG.rows_width {3}  ] $Rows1x512_2

  # Create instance: Rows8x512_0, and set properties
  set Rows8x512_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Rows8x512:1.0 Rows8x512_0 ]
  set_property -dict [ list CONFIG.rows_width {3}  ] $Rows8x512_0

  # Create instance: Rows8x512_1, and set properties
  set Rows8x512_1 [ create_bd_cell -type ip -vlnv dtysky:Image:Rows8x512:1.0 Rows8x512_1 ]
  set_property -dict [ list CONFIG.rows_width {3}  ] $Rows8x512_1

  # Create instance: Window_0, and set properties
  set Window_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Window:1.0 Window_0 ]

  # Create instance: Window_1, and set properties
  set Window_1 [ create_bd_cell -type ip -vlnv dtysky:Image:Window:1.0 Window_1 ]

  # Create instance: Window_2, and set properties
  set Window_2 [ create_bd_cell -type ip -vlnv dtysky:Image:Window:1.0 Window_2 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.window_size {3}  ] $Window_2

  # Create instance: Window_3, and set properties
  set Window_3 [ create_bd_cell -type ip -vlnv dtysky:Image:Window:1.0 Window_3 ]
  set_property -dict [ list CONFIG.color_width {1} CONFIG.window_size {5}  ] $Window_3

  # Create instance: Window_4, and set properties
  set Window_4 [ create_bd_cell -type ip -vlnv dtysky:Image:Window:1.0 Window_4 ]
  set_property -dict [ list CONFIG.color_width {1}  ] $Window_4

  # Create instance: camCap_0, and set properties
  set camCap_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:camCap:1.0 camCap_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_0 ]
  set_property -dict [ list CONFIG.CLKOUT2_JITTER {175.402} CONFIG.CLKOUT2_PHASE_ERROR {98.575} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25} CONFIG.CLKOUT2_USED {true} CONFIG.NUM_OUT_CLKS {2} CONFIG.USE_LOCKED {true} CONFIG.USE_RESET {false}  ] $clk_wiz_0

  # Create instance: vga_readBRAM_0, and set properties
  set vga_readBRAM_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:vga_readBRAM:1.0 vga_readBRAM_0 ]

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $xlconstant_3

  # Create port connections
  connect_bd_net -net BoardPreGridInit_0_dilation0 [get_bd_pins BoardPreGridInit_0/dilation0] [get_bd_pins ErosionDilationBin_0/template]
  connect_bd_net -net BoardPreGridInit_0_erosion0 [get_bd_pins BoardPreGridInit_0/erosion0] [get_bd_pins ErosionDilationBin_1/template]
  connect_bd_net -net BoardPreGridInit_0_erosion1 [get_bd_pins BoardPreGridInit_0/erosion1] [get_bd_pins ErosionDilationBin_2/template]
  connect_bd_net -net BoardPreGridInit_0_erosion2 [get_bd_pins BoardPreGridInit_0/erosion2] [get_bd_pins ErosionDilationBin_3/template]
  connect_bd_net -net BoardPreGridInit_0_erosion3 [get_bd_pins BoardPreGridInit_0/erosion3] [get_bd_pins ErosionDilationBin_4/template]
  connect_bd_net -net BoardPreGridInit_0_erosion4 [get_bd_pins BoardPreGridInit_0/erosion4] [get_bd_pins ErosionDilationBin_5/template]
  connect_bd_net -net BoardPreGridInit_0_harris_th [get_bd_pins BoardPreGridInit_0/harris_th] [get_bd_pins Harris_0/diff_th]
  connect_bd_net -net BoardPreGridInit_0_match0 [get_bd_pins BoardPreGridInit_0/match0] [get_bd_pins MatchTemplateBin_0/template]
  connect_bd_net -net BoardPreGridInit_0_mode_dilation [get_bd_pins BoardPreGridInit_0/mode_dilation] [get_bd_pins ErosionDilationBin_0/mode]
  connect_bd_net -net BoardPreGridInit_0_mode_erosion [get_bd_pins BoardPreGridInit_0/mode_erosion] [get_bd_pins ErosionDilationBin_1/mode] [get_bd_pins ErosionDilationBin_2/mode] [get_bd_pins ErosionDilationBin_3/mode] [get_bd_pins ErosionDilationBin_4/mode] [get_bd_pins ErosionDilationBin_5/mode]
  connect_bd_net -net BoardPreGridInit_0_rst_all_n [get_bd_pins BoardPreGridInit_0/rst_all_n] [get_bd_pins ErosionDilationBin_0/rst_n] [get_bd_pins ErosionDilationBin_1/rst_n] [get_bd_pins ErosionDilationBin_2/rst_n] [get_bd_pins ErosionDilationBin_3/rst_n] [get_bd_pins ErosionDilationBin_4/rst_n] [get_bd_pins ErosionDilationBin_5/rst_n] [get_bd_pins Frame_0/in_enable] [get_bd_pins Frame_0/rst_n] [get_bd_pins Frame_1/rst_n] [get_bd_pins Frame_2/in_enable] [get_bd_pins Frame_2/rst_n] [get_bd_pins Frame_3/rst_n] [get_bd_pins Frame_4/rst_n] [get_bd_pins Frame_5/in_enable] [get_bd_pins Frame_5/rst_n] [get_bd_pins MeanFitter_0/rst_n] [get_bd_pins RGB2GRAY_0/in_enable] [get_bd_pins Rows1x512_0/rst_n] [get_bd_pins Rows1x512_1/rst_n] [get_bd_pins Rows1x512_2/rst_n] [get_bd_pins Rows8x512_0/rst_n] [get_bd_pins Rows8x512_1/rst_n] [get_bd_pins Window_0/rst_n] [get_bd_pins Window_1/rst_n] [get_bd_pins Window_2/rst_n] [get_bd_pins Window_3/rst_n] [get_bd_pins Window_4/rst_n]
  connect_bd_net -net Bram1x320x240_0_doutb [get_bd_pins Bram1x320x240_0/doutb] [get_bd_pins Frame_2/in_data]
  connect_bd_net -net Bram1x320x240_1_doutb [get_bd_pins Bram1x320x240_1/doutb] [get_bd_pins Frame_5/in_data]
  connect_bd_net -net Bram1x320x240_2_doutb [get_bd_pins Bram1x320x240_2/doutb] [get_bd_pins ColorBin2Rgb_0/b]
  connect_bd_net -net Bram8x320x240_0_doutb [get_bd_pins Bram8x320x240_0/doutb] [get_bd_pins Frame_0/in_data]
  connect_bd_net -net Color16to24_0_rgb24 [get_bd_pins Color16to24_0/rgb24] [get_bd_pins RGB2GRAY_0/in_data]
  connect_bd_net -net ColorBin2Rgb_0_rgb24 [get_bd_pins ColorBin2Rgb_0/rgb24] [get_bd_pins ColorRgb2Vga_0/rgb24]
  connect_bd_net -net ColorRgb2Vga_0_vga [get_bd_pins ColorRgb2Vga_0/vga] [get_bd_pins vga_readBRAM_0/vga_in]
  connect_bd_net -net DataDelay_0_out_data [get_bd_pins DataDelay_0/out_data] [get_bd_pins Or8_0/i2]
  connect_bd_net -net ErosionDilationBin_0_out_data [get_bd_pins ErosionDilationBin_0/out_data] [get_bd_pins Rows1x512_1/in_data]
  connect_bd_net -net ErosionDilationBin_0_out_enable [get_bd_pins ErosionDilationBin_0/out_enable] [get_bd_pins Rows1x512_1/in_enable]
  connect_bd_net -net ErosionDilationBin_1_out_data [get_bd_pins ErosionDilationBin_1/out_data] [get_bd_pins Frame_4/in_data]
  connect_bd_net -net ErosionDilationBin_1_out_enable [get_bd_pins ErosionDilationBin_1/out_enable] [get_bd_pins Frame_4/in_enable]
  connect_bd_net -net ErosionDilationBin_2_out_data [get_bd_pins ErosionDilationBin_2/out_data] [get_bd_pins Or8_0/i0]
  connect_bd_net -net ErosionDilationBin_2_out_enable [get_bd_pins ErosionDilationBin_2/out_enable] [get_bd_pins Frame_3/in_enable]
  connect_bd_net -net ErosionDilationBin_3_out_data [get_bd_pins ErosionDilationBin_3/out_data] [get_bd_pins Or8_0/i1]
  connect_bd_net -net ErosionDilationBin_4_out_data [get_bd_pins ErosionDilationBin_4/out_data] [get_bd_pins Or8_0/i3]
  connect_bd_net -net ErosionDilationBin_5_out_data [get_bd_pins ErosionDilationBin_5/out_data] [get_bd_pins Or8_0/i4]
  connect_bd_net -net Frame_0_out_data [get_bd_pins Frame_0/out_data] [get_bd_pins Rows8x512_0/in_data]
  connect_bd_net -net Frame_0_out_enable [get_bd_pins Frame_0/out_enable] [get_bd_pins Rows8x512_0/in_enable]
  connect_bd_net -net Frame_0_ram_addr [get_bd_pins Bram8x320x240_0/addrb] [get_bd_pins Frame_0/ram_addr]
  connect_bd_net -net Frame_1_out_data [get_bd_pins Bram1x320x240_0/dina] [get_bd_pins Frame_1/out_data]
  connect_bd_net -net Frame_1_out_enable [get_bd_pins Bram1x320x240_0/wea] [get_bd_pins Frame_1/out_enable]
  connect_bd_net -net Frame_1_ram_addr [get_bd_pins Bram1x320x240_0/addra] [get_bd_pins Frame_1/ram_addr]
  connect_bd_net -net Frame_2_out_data [get_bd_pins Frame_2/out_data] [get_bd_pins Rows1x512_0/in_data]
  connect_bd_net -net Frame_2_out_enable [get_bd_pins Frame_2/out_enable] [get_bd_pins Rows1x512_0/in_enable]
  connect_bd_net -net Frame_2_ram_addr [get_bd_pins Bram1x320x240_0/addrb] [get_bd_pins Frame_2/ram_addr]
  connect_bd_net -net Frame_3_out_data [get_bd_pins Frame_3/out_data] [get_bd_pins Mux2_1/i1]
  connect_bd_net -net Frame_3_out_enable [get_bd_pins Frame_3/out_enable] [get_bd_pins Mux2_0/i1]
  connect_bd_net -net Frame_3_ram_addr [get_bd_pins Frame_3/ram_addr] [get_bd_pins Mux2_2/i1]
  connect_bd_net -net Frame_4_out_data [get_bd_pins Frame_4/out_data] [get_bd_pins Mux2_1/i0]
  connect_bd_net -net Frame_4_out_enable [get_bd_pins Frame_4/out_enable] [get_bd_pins Mux2_0/i0]
  connect_bd_net -net Frame_4_ram_addr [get_bd_pins Frame_4/ram_addr] [get_bd_pins Mux2_2/i0]
  connect_bd_net -net Frame_5_out_data [get_bd_pins Frame_5/out_data] [get_bd_pins Rows1x512_2/in_data]
  connect_bd_net -net Frame_5_out_enable [get_bd_pins Frame_5/out_enable] [get_bd_pins Rows1x512_2/in_enable]
  connect_bd_net -net Frame_5_ram_addr [get_bd_pins Bram1x320x240_1/addrb] [get_bd_pins Frame_5/ram_addr]
  connect_bd_net -net Harris_0_out_data [get_bd_pins Frame_1/in_data] [get_bd_pins Harris_0/out_data]
  connect_bd_net -net Harris_0_out_enable [get_bd_pins Frame_1/in_enable] [get_bd_pins Harris_0/out_enable]
  connect_bd_net -net IICctrl_0_I2C_SCLK [get_bd_ports I2C_SCLK] [get_bd_pins IICctrl_0/I2C_SCLK]
  connect_bd_net -net MatchTemplateBin_0_out_data [get_bd_pins DataDelay_0/in_data] [get_bd_pins MatchTemplateBin_0/out_data]
  connect_bd_net -net MeanFitter_0_out_data [get_bd_pins MeanFitter_0/out_data] [get_bd_pins Rows8x512_1/in_data]
  connect_bd_net -net MeanFitter_0_out_enable [get_bd_pins MeanFitter_0/out_enable] [get_bd_pins Rows8x512_1/in_enable]
  connect_bd_net -net Mux2_0_o [get_bd_pins Bram1x320x240_1/wea] [get_bd_pins Bram1x320x240_2/wea] [get_bd_pins Mux2_0/o]
  connect_bd_net -net Mux2_1_o [get_bd_pins Bram1x320x240_1/dina] [get_bd_pins Bram1x320x240_2/dina] [get_bd_pins Mux2_1/o]
  connect_bd_net -net Mux2_2_o [get_bd_pins Bram1x320x240_1/addra] [get_bd_pins Bram1x320x240_2/addra] [get_bd_pins Mux2_2/o]
  connect_bd_net -net Net [get_bd_ports I2C_SDAT] [get_bd_pins IICctrl_0/I2C_SDAT]
  connect_bd_net -net Or8_0_o [get_bd_pins Frame_3/in_data] [get_bd_pins Or8_0/o]
  connect_bd_net -net RGB2GRAY_0_out_data [get_bd_pins Bram8x320x240_0/dina] [get_bd_pins RGB2GRAY_0/out_data]
  connect_bd_net -net Rows1x512_0_out_data [get_bd_pins Rows1x512_0/out_data] [get_bd_pins Window_2/in_data]
  connect_bd_net -net Rows1x512_0_out_enable [get_bd_pins Rows1x512_0/out_enable] [get_bd_pins Window_2/in_enable]
  connect_bd_net -net Rows1x512_1_out_data [get_bd_pins Rows1x512_1/out_data] [get_bd_pins Window_3/in_data]
  connect_bd_net -net Rows1x512_1_out_enable [get_bd_pins Rows1x512_1/out_enable] [get_bd_pins Window_3/in_enable]
  connect_bd_net -net Rows1x512_2_out_data [get_bd_pins Rows1x512_2/out_data] [get_bd_pins Window_4/in_data]
  connect_bd_net -net Rows1x512_2_out_enable [get_bd_pins Rows1x512_2/out_enable] [get_bd_pins Window_4/in_enable]
  connect_bd_net -net Rows8x512_0_out_data [get_bd_pins Rows8x512_0/out_data] [get_bd_pins Window_0/in_data]
  connect_bd_net -net Rows8x512_0_out_enable [get_bd_pins Rows8x512_0/out_enable] [get_bd_pins Window_0/in_enable]
  connect_bd_net -net Rows8x512_1_out_data [get_bd_pins Rows8x512_1/out_data] [get_bd_pins Window_1/in_data]
  connect_bd_net -net Rows8x512_1_out_enable [get_bd_pins Rows8x512_1/out_enable] [get_bd_pins Window_1/in_enable]
  connect_bd_net -net Window_0_out_data [get_bd_pins MeanFitter_0/in_data] [get_bd_pins Window_0/out_data]
  connect_bd_net -net Window_0_out_enable [get_bd_pins MeanFitter_0/in_enable] [get_bd_pins Window_0/out_enable]
  connect_bd_net -net Window_1_out_data [get_bd_pins Harris_0/in_data] [get_bd_pins Window_1/out_data]
  connect_bd_net -net Window_1_out_enable [get_bd_pins Harris_0/in_enable] [get_bd_pins Window_1/out_enable]
  connect_bd_net -net Window_2_out_data [get_bd_pins ErosionDilationBin_0/in_data] [get_bd_pins Window_2/out_data]
  connect_bd_net -net Window_2_out_enable [get_bd_pins ErosionDilationBin_0/in_enable] [get_bd_pins Window_2/out_enable]
  connect_bd_net -net Window_3_out_data [get_bd_pins ErosionDilationBin_1/in_data] [get_bd_pins Window_3/out_data]
  connect_bd_net -net Window_3_out_enable [get_bd_pins ErosionDilationBin_1/in_enable] [get_bd_pins Window_3/out_enable]
  connect_bd_net -net Window_4_out_data [get_bd_pins ErosionDilationBin_2/in_data] [get_bd_pins ErosionDilationBin_3/in_data] [get_bd_pins ErosionDilationBin_4/in_data] [get_bd_pins ErosionDilationBin_5/in_data] [get_bd_pins MatchTemplateBin_0/in_data] [get_bd_pins Window_4/out_data]
  connect_bd_net -net Window_4_out_enable [get_bd_pins ErosionDilationBin_2/in_enable] [get_bd_pins ErosionDilationBin_3/in_enable] [get_bd_pins ErosionDilationBin_4/in_enable] [get_bd_pins ErosionDilationBin_5/in_enable] [get_bd_pins MatchTemplateBin_0/in_enable] [get_bd_pins Window_4/out_enable]
  connect_bd_net -net camCap_0_addr [get_bd_pins Bram8x320x240_0/addra] [get_bd_pins camCap_0/addr]
  connect_bd_net -net camCap_0_dout [get_bd_pins Color16to24_0/rgb16] [get_bd_pins camCap_0/dout]
  connect_bd_net -net camCap_0_wclk [get_bd_pins Bram8x320x240_0/clka] [get_bd_pins camCap_0/wclk]
  connect_bd_net -net camCap_0_we [get_bd_pins Bram8x320x240_0/wea] [get_bd_pins camCap_0/we]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_in1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins BoardPreGridInit_0/clk] [get_bd_pins Bram1x320x240_0/clka] [get_bd_pins Bram1x320x240_0/clkb] [get_bd_pins Bram1x320x240_1/clka] [get_bd_pins Bram1x320x240_1/clkb] [get_bd_pins Bram1x320x240_2/clka] [get_bd_pins Bram1x320x240_2/clkb] [get_bd_pins Bram8x320x240_0/clkb] [get_bd_pins DataDelay_0/clk] [get_bd_pins ErosionDilationBin_0/clk] [get_bd_pins ErosionDilationBin_1/clk] [get_bd_pins ErosionDilationBin_2/clk] [get_bd_pins ErosionDilationBin_3/clk] [get_bd_pins ErosionDilationBin_4/clk] [get_bd_pins ErosionDilationBin_5/clk] [get_bd_pins Frame_0/clk] [get_bd_pins Frame_1/clk] [get_bd_pins Frame_2/clk] [get_bd_pins Frame_3/clk] [get_bd_pins Frame_4/clk] [get_bd_pins Frame_5/clk] [get_bd_pins MeanFitter_0/clk] [get_bd_pins Rows1x512_0/clk] [get_bd_pins Rows1x512_1/clk] [get_bd_pins Rows1x512_2/clk] [get_bd_pins Rows8x512_0/clk] [get_bd_pins Rows8x512_1/clk] [get_bd_pins Window_0/clk] [get_bd_pins Window_1/clk] [get_bd_pins Window_2/clk] [get_bd_pins Window_3/clk] [get_bd_pins Window_4/clk] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins IICctrl_0/iCLK] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins vga_readBRAM_0/clk25]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins BoardPreGridInit_0/pll_locked] [get_bd_pins clk_wiz_0/locked]
  connect_bd_net -net d_1 [get_bd_ports d] [get_bd_pins camCap_0/d]
  connect_bd_net -net href_1 [get_bd_ports href] [get_bd_pins camCap_0/href]
  connect_bd_net -net pclk_1 [get_bd_ports pclk] [get_bd_pins camCap_0/pclk]
  connect_bd_net -net rst_n_1 [get_bd_ports rst_n] [get_bd_pins BoardPreGridInit_0/rst_n]
  connect_bd_net -net sel_1 [get_bd_ports sel] [get_bd_pins Mux2_0/sel] [get_bd_pins Mux2_1/sel] [get_bd_pins Mux2_2/sel]
  connect_bd_net -net vga_readBRAM_0_frame_addr [get_bd_pins Bram1x320x240_2/addrb] [get_bd_pins vga_readBRAM_0/frame_addr]
  connect_bd_net -net vga_readBRAM_0_vga_blue [get_bd_ports vga_blue] [get_bd_pins vga_readBRAM_0/vga_blue]
  connect_bd_net -net vga_readBRAM_0_vga_green [get_bd_ports vga_green] [get_bd_pins vga_readBRAM_0/vga_green]
  connect_bd_net -net vga_readBRAM_0_vga_hsync [get_bd_ports vga_hsync] [get_bd_pins vga_readBRAM_0/vga_hsync]
  connect_bd_net -net vga_readBRAM_0_vga_red [get_bd_ports vga_red] [get_bd_pins vga_readBRAM_0/vga_red]
  connect_bd_net -net vga_readBRAM_0_vga_vsync [get_bd_ports vga_vsync] [get_bd_pins vga_readBRAM_0/vga_vsync]
  connect_bd_net -net vsync_1 [get_bd_ports vsync] [get_bd_pins camCap_0/vsync]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins Or8_0/i5] [get_bd_pins Or8_0/i6] [get_bd_pins Or8_0/i7] [get_bd_pins xlconstant_3/dout]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


