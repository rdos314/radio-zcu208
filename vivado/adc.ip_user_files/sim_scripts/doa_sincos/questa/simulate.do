onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib doa_sincos_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {doa_sincos.udo}

run 1000ns

quit -force
