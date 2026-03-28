onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fir_deci_low_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fir_deci_low.udo}

run 1000ns

quit -force
