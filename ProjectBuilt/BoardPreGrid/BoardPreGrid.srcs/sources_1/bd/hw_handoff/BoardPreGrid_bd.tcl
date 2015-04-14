
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
  set vga_blue [ create_bd_port -dir O -from 4 -to 0 vga_blue ]
  set vga_green [ create_bd_port -dir O -from 5 -to 0 vga_green ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_red [ create_bd_port -dir O -from 4 -to 0 vga_red ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]
  set vsync [ create_bd_port -dir I vsync ]
  set xclk [ create_bd_port -dir O -type clk xclk ]

  # Create instance: Bram8x320x240_0, and set properties
  set Bram8x320x240_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram8x320x240:1.0 Bram8x320x240_0 ]

  # Create instance: Bram8x320x240_1, and set properties
  set Bram8x320x240_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram8x320x240:1.0 Bram8x320x240_1 ]

  # Create instance: Bram8x320x240_2, and set properties
  set Bram8x320x240_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:Bram8x320x240:1.0 Bram8x320x240_2 ]

  # Create instance: Color16to24_0, and set properties
  set Color16to24_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Color16to24:1.0 Color16to24_0 ]

  # Create instance: ColorGray2Rgb_0, and set properties
  set ColorGray2Rgb_0 [ create_bd_cell -type ip -vlnv dtysky:Image:ColorGray2Rgb:1.0 ColorGray2Rgb_0 ]

  # Create instance: ColorRgb2Vga_0, and set properties
  set ColorRgb2Vga_0 [ create_bd_cell -type ip -vlnv dtysky:Image:ColorRgb2Vga:1.0 ColorRgb2Vga_0 ]

  # Create instance: Frame_0, and set properties
  set Frame_0 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_0 ]
  set_property -dict [ list CONFIG.mode {1}  ] $Frame_0

  # Create instance: Frame_1, and set properties
  set Frame_1 [ create_bd_cell -type ip -vlnv dtysky:Image:Frame:1.1 Frame_1 ]

  # Create instance: IICctrl_0, and set properties
  set IICctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:IICctrl:1.0 IICctrl_0 ]

  # Create instance: Mux2_0, and set properties
  set Mux2_0 [ create_bd_cell -type ip -vlnv dtysky:user:Mux2:1.0 Mux2_0 ]

  # Create instance: RGB2GRAY_0, and set properties
  set RGB2GRAY_0 [ create_bd_cell -type ip -vlnv dtysky:Image:RGB2GRAY:1.0 RGB2GRAY_0 ]

  # Create instance: camCap_0, and set properties
  set camCap_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:camCap:1.0 camCap_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_0 ]
  set_property -dict [ list CONFIG.CLKOUT1_JITTER {175.402} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25} CONFIG.CLKOUT2_JITTER {175.402} CONFIG.CLKOUT2_PHASE_ERROR {98.575} CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25} CONFIG.CLKOUT2_USED {true} CONFIG.CLKOUT3_JITTER {130.958} CONFIG.CLKOUT3_PHASE_ERROR {98.575} CONFIG.CLKOUT3_USED {true} CONFIG.NUM_OUT_CLKS {3} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false}  ] $clk_wiz_0

  # Create instance: vga_readBRAM_0, and set properties
  set vga_readBRAM_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:vga_readBRAM:1.0 vga_readBRAM_0 ]

  # Create port connections
  connect_bd_net -net Bram8x320x240_0_doutb [get_bd_pins Bram8x320x240_0/doutb] [get_bd_pins Frame_0/in_data]
  connect_bd_net -net Bram8x320x240_1_doutb [get_bd_pins Bram8x320x240_1/doutb] [get_bd_pins Mux2_0/i1]
  connect_bd_net -net Bram8x320x240_2_doutb [get_bd_pins Bram8x320x240_2/doutb] [get_bd_pins Mux2_0/i0]
  connect_bd_net -net Color16to24_0_rgb24 [get_bd_pins Color16to24_0/rgb24] [get_bd_pins RGB2GRAY_0/in_data]
  connect_bd_net -net ColorGray2Rgb_0_rgb24 [get_bd_pins ColorGray2Rgb_0/rgb24] [get_bd_pins ColorRgb2Vga_0/rgb24]
  connect_bd_net -net ColorRgb2Vga_0_vga [get_bd_pins ColorRgb2Vga_0/vga] [get_bd_pins vga_readBRAM_0/vga_in]
  connect_bd_net -net Frame_0_out_data [get_bd_pins Frame_0/out_data] [get_bd_pins Frame_1/in_data]
  connect_bd_net -net Frame_0_out_enable [get_bd_pins Frame_0/out_enable] [get_bd_pins Frame_1/in_enable]
  connect_bd_net -net Frame_0_ram_addr [get_bd_pins Bram8x320x240_0/addrb] [get_bd_pins Frame_0/ram_addr]
  connect_bd_net -net Frame_1_out_data [get_bd_pins Bram8x320x240_1/dina] [get_bd_pins Frame_1/out_data]
  connect_bd_net -net Frame_1_out_enable [get_bd_pins Bram8x320x240_1/wea] [get_bd_pins Frame_1/out_enable]
  connect_bd_net -net Frame_1_ram_addr [get_bd_pins Bram8x320x240_1/addra] [get_bd_pins Frame_1/ram_addr]
  connect_bd_net -net IICctrl_0_I2C_SCLK [get_bd_ports I2C_SCLK] [get_bd_pins IICctrl_0/I2C_SCLK]
  connect_bd_net -net Mux2_0_o [get_bd_pins ColorGray2Rgb_0/gray] [get_bd_pins Mux2_0/o]
  connect_bd_net -net Net [get_bd_ports I2C_SDAT] [get_bd_pins IICctrl_0/I2C_SDAT]
  connect_bd_net -net RGB2GRAY_0_out_data [get_bd_pins Bram8x320x240_0/dina] [get_bd_pins Bram8x320x240_2/dina] [get_bd_pins RGB2GRAY_0/out_data]
  connect_bd_net -net camCap_0_addr [get_bd_pins Bram8x320x240_0/addra] [get_bd_pins Bram8x320x240_2/addra] [get_bd_pins camCap_0/addr]
  connect_bd_net -net camCap_0_dout [get_bd_pins Color16to24_0/rgb16] [get_bd_pins camCap_0/dout]
  connect_bd_net -net camCap_0_wclk [get_bd_pins Bram8x320x240_0/clka] [get_bd_pins Bram8x320x240_2/clka] [get_bd_pins camCap_0/wclk]
  connect_bd_net -net camCap_0_we [get_bd_pins Bram8x320x240_0/wea] [get_bd_pins Bram8x320x240_2/wea] [get_bd_pins camCap_0/we]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_in1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins Bram8x320x240_0/clkb] [get_bd_pins Bram8x320x240_1/clka] [get_bd_pins Frame_0/clk] [get_bd_pins Frame_1/clk] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_ports xclk] [get_bd_pins Bram8x320x240_1/clkb] [get_bd_pins Bram8x320x240_2/clkb] [get_bd_pins IICctrl_0/iCLK] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins vga_readBRAM_0/clk25]
  connect_bd_net -net d_1 [get_bd_ports d] [get_bd_pins camCap_0/d]
  connect_bd_net -net href_1 [get_bd_ports href] [get_bd_pins camCap_0/href]
  connect_bd_net -net pclk_1 [get_bd_ports pclk] [get_bd_pins camCap_0/pclk]
  connect_bd_net -net rst_n_1 [get_bd_ports rst_n] [get_bd_pins Frame_0/in_enable] [get_bd_pins Frame_0/rst_n] [get_bd_pins Frame_1/rst_n] [get_bd_pins IICctrl_0/iRST_N] [get_bd_pins RGB2GRAY_0/in_enable]
  connect_bd_net -net sel_1 [get_bd_ports sel] [get_bd_pins Mux2_0/sel]
  connect_bd_net -net vga_readBRAM_0_frame_addr [get_bd_pins Bram8x320x240_1/addrb] [get_bd_pins Bram8x320x240_2/addrb] [get_bd_pins vga_readBRAM_0/frame_addr]
  connect_bd_net -net vga_readBRAM_0_vga_blue [get_bd_ports vga_blue] [get_bd_pins vga_readBRAM_0/vga_blue]
  connect_bd_net -net vga_readBRAM_0_vga_green [get_bd_ports vga_green] [get_bd_pins vga_readBRAM_0/vga_green]
  connect_bd_net -net vga_readBRAM_0_vga_hsync [get_bd_ports vga_hsync] [get_bd_pins vga_readBRAM_0/vga_hsync]
  connect_bd_net -net vga_readBRAM_0_vga_red [get_bd_ports vga_red] [get_bd_pins vga_readBRAM_0/vga_red]
  connect_bd_net -net vga_readBRAM_0_vga_vsync [get_bd_ports vga_vsync] [get_bd_pins vga_readBRAM_0/vga_vsync]
  connect_bd_net -net vsync_1 [get_bd_ports vsync] [get_bd_pins camCap_0/vsync]

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


