
set_max_delay -datapath_only -from [filter [all_registers -clock [get_clocks -of_objects [get_ports s00_axi_aclk]]] {PRIMITIVE_TYPE !~ BLOCKRAM.BRAM.*}] -to [filter [all_registers -clock [get_clocks -of_objects [get_ports aclk]]] {PRIMITIVE_TYPE !~ BLOCKRAM.BRAM.*}] [get_property PERIOD [get_clocks -of_objects [get_ports aclk]]]
