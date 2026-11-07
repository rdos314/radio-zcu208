onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fir_comp_high_im_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fir_comp_high_im.udo}

run 1000ns

quit -force
