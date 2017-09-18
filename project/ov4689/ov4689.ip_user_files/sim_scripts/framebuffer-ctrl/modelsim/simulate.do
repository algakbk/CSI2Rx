onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.output_line_buffer xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {output_line_buffer.udo}

run -all

quit -force
