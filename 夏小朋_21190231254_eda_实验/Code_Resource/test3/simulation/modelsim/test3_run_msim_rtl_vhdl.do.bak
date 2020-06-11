transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test3/test3.vhd}

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test3/simulation/modelsim/test3.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  test3_vhd_tst

add wave *
view structure
view signals
run -all
