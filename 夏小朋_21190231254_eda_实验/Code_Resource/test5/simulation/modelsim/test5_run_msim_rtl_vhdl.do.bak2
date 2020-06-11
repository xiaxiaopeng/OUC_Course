transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test5/test5.vhd}

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test5/simulation/modelsim/test5.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"   test5_vhd_tst

add wave *
view structure
view signals
run 1000 ns
