transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {SingleROM.vho}

vcom -93 -work work {C:/Users/Administrador/Documents/UFMG/5_Periodo/LSD/TP_Elevador/SingleROM/tb_SingleROM.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=SingleROM_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_SingleROM

add wave *
view structure
view signals
run 100 ns
