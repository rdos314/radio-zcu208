onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dsp_sqr16_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dsp_sqr16.udo}

run 1000ns

quit -force
