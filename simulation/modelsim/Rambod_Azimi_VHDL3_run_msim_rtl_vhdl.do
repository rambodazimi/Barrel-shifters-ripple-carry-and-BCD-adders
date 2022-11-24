transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/VHDL Assignments/VHDL3/rambod_azimi_barrel_shifter_structural.vhd}
vcom -93 -work work {P:/VHDL Assignments/VHDL3/rambod_azimi_MUX_structural.vhd}

