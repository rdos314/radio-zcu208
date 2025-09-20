# 1 "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp/lop-config.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp/lop-config.dts"

/dts-v1/;
/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                lop_0 {
                        compatible = "system-device-tree-v1,lop,load";
                        load = "assists/baremetal_validate_comp_xlnx.py";
                };

                lop_1 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_pmu_0 C:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_apps/zynqmp_pmufw/src C:/radio-zcu208/_ide/.wsdata/.repo.yaml";
                };

                lop_2 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_pmu_0 C:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilfpga_v6_8/src C:/radio-zcu208/_ide/.wsdata/.repo.yaml";
                };

                lop_3 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_pmu_0 C:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilsecure_v5_5/src C:/radio-zcu208/_ide/.wsdata/.repo.yaml";
                };

                lop_4 {
                    compatible = "system-device-tree-v1,lop,assist-v1";
                    node = "/";
                    outdir = "C:/radio-zcu208/platform/zynqmp_pmufw/zynqmp_pmufw_bsp";
                    id = "module,baremetal_validate_comp_xlnx";
                    options = "psu_pmu_0 C:/Xilinx/2025.1/Vitis/data/embeddedsw/lib/sw_services/xilskey_v7_7/src C:/radio-zcu208/_ide/.wsdata/.repo.yaml";
                };

        };
    };
