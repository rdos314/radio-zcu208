onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib mul_stat24_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mul_stat24.udo}

run 1000ns

quit -force
