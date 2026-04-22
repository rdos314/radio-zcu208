transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_21 -l smartconnect_v1_0 -l zynq_ultra_ps_e_vip_v1_0_21 "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_21 -l smartconnect_v1_0 -l zynq_ultra_ps_e_vip_v1_0_21 "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/ip/ila_7/hdl/verilog" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/media/ubuntu/large/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+../../../../adc.gen/sources_1/ip/ila_7/hdl/verilog" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"../../../../adc.gen/sources_1/ip/ila_7/sim/ila_7.v" \

vlog -work xil_defaultlib \
"glbl.v"

