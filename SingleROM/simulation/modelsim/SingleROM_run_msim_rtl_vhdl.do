transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrador/Documents/UFMG/5_Periodo/LSD/TP_Elevador/SingleROM/SingleROM.vhd}

vcom -93 -work work {C:/Users/Administrador/Documents/UFMG/5_Periodo/LSD/TP_Elevador/SingleROM/tb_SingleROM.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_SingleROM

add wave *
view structure
view signals
run 100 ns
