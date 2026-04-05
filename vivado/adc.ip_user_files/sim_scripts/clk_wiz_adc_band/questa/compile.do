vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../ipstatic" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/media/ubuntu/large/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/media/ubuntu/large/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../../../2025.1/data/rsb/busdef" "+incdir+/media/ubuntu/large/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../adc.gen/sources_1/ip/clk_wiz_adc_band/clk_wiz_adc_band_clk_wiz.v" \
"../../../../adc.gen/sources_1/ip/clk_wiz_adc_band/clk_wiz_adc_band.v" \

vlog -work xil_defaultlib \
"glbl.v"

