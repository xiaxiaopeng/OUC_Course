transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test1/test1.vhd}

vcom -93 -work work {C:/Users/Administrator/Desktop/eda/test1/simulation/modelsim/test1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  test1_vhd_tst

add wave *
view structure
view signals
run -all
