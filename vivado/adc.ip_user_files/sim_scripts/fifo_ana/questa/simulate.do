onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fifo_ana_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_ana.udo}

run 1000ns

quit -force
