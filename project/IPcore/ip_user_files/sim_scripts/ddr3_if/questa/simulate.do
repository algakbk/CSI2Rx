onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ddr3_if_opt

do {wave.do}

view wave
view structure
view signals

do {ddr3_if.udo}

run -all

quit -force
