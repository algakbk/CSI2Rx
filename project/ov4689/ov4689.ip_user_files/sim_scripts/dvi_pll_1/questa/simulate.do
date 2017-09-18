onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dvi_pll_opt

do {wave.do}

view wave
view structure
view signals

do {dvi_pll.udo}

run -all

quit -force
