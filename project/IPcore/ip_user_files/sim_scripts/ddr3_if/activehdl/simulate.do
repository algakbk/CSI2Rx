onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ddr3_if -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ddr3_if xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ddr3_if.udo}

run -all

endsim

quit -force
