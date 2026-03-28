onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fir_doa_high_re_189_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fir_doa_high_re_189.udo}

run 1000ns

quit -force
