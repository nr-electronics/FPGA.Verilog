transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/nr.new/Desktop/rs_latch {C:/Users/nr.new/Desktop/rs_latch/rs_latch.v}

vlog -vlog01compat -work work +incdir+C:/Users/nr.new/Desktop/rs_latch/simulation/modelsim {C:/Users/nr.new/Desktop/rs_latch/simulation/modelsim/rs_latch_tst.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  rs_latch_vlg_tst

add wave *
view structure
view signals
run -all
