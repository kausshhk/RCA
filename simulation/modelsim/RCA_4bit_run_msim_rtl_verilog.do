transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit {C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit/full_adder.sv}
vlog -sv -work work +incdir+C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit {C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit/RCA_4.sv}

vlog -sv -work work +incdir+C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit {C:/Users/Kaushik/OneDrive/Desktop/RCA_4bit/RCA4_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  RCA4_tb

add wave *
view structure
view signals
run -all
