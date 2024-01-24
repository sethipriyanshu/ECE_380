onerror {exit -code 1}
vlib work
vcom -work work part2_lab1.vho
vcom -work work Waveform2.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.part2_lab1_vhd_vec_tst
vcd file -direction part2_lab1.msim.vcd
vcd add -internal part2_lab1_vhd_vec_tst/*
vcd add -internal part2_lab1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
