onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fir_raw_deci_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fir_raw_deci.udo}

run 1000ns

quit -force
