set(IPIPSU_NUM_DRIVER_INSTANCES "psu_ipi_3;psu_ipi_4;psu_ipi_5;psu_ipi_6")
set(IPIPSU0_PROP_LIST "0xff330000;0x10000")
list(APPEND TOTAL_IPIPSU_PROP_LIST IPIPSU0_PROP_LIST)
set(IPIPSU1_PROP_LIST "0xff331000;0x20000")
list(APPEND TOTAL_IPIPSU_PROP_LIST IPIPSU1_PROP_LIST)
set(IPIPSU2_PROP_LIST "0xff332000;0x40000")
list(APPEND TOTAL_IPIPSU_PROP_LIST IPIPSU2_PROP_LIST)
set(IPIPSU3_PROP_LIST "0xff333000;0x80000")
list(APPEND TOTAL_IPIPSU_PROP_LIST IPIPSU3_PROP_LIST)
set(psu_ddr_0_memory_0 "0x0;0x7ff00000")
set(psu_ddr_0_memory_1 "0x7ff00000;0x100000")
set(psu_ocm_ram_0_memory_0 "0xfffc0000;0x40000")
set(DDR psu_ddr_0_memory_0)
set(CODE psu_ddr_0_memory_0)
set(DATA psu_ddr_0_memory_0)
set(TOTAL_MEM_CONTROLLERS "psu_ddr_0_memory_0;psu_ddr_0_memory_1;psu_ocm_ram_0_memory_0")
set(MEMORY_SECTION "MEMORY
{
	psu_ddr_0_memory_0 : ORIGIN = 0x0, LENGTH = 0x7ff00000
	psu_qspi_linear_0_memory_0 : ORIGIN = 0xc0000000, LENGTH = 0x20000000
	psu_ddr_0_memory_1 : ORIGIN = 0x7ff00000, LENGTH = 0x100000
	psu_ocm_ram_0_memory_0 : ORIGIN = 0xfffc0000, LENGTH = 0x40000
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
