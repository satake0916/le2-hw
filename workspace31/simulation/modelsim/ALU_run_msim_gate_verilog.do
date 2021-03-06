transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ALU_7_1200mv_100c_slow.vo}

vlog -vlog01compat -work work +incdir+/home/016/a0168127/le2hard3/workspace31/simulation/modelsim {/home/016/a0168127/le2hard3/workspace31/simulation/modelsim/ALU_test4.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  test4

add wave *
view structure
view signals
run -all
