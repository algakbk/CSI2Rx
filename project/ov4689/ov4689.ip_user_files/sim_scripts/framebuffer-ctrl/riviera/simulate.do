onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+output_line_buffer -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.output_line_buffer xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {output_line_buffer.udo}

run -all

endsim

quit -force
