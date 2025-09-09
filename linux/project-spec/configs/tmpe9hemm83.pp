# 0 "/tmp/tmpe9hemm83"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/tmp/tmpe9hemm83"
/dts-v1/;
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 1
# 15 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi"
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/dma/xlnx-zynqmp-dpdma.h" 1
# 16 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/gpio/gpio.h" 1
# 17 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h" 1
# 9 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h"
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/interrupt-controller/irq.h" 1
# 10 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/interrupt-controller/arm-gic.h" 2
# 18 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/interrupt-controller/irq.h" 1
# 19 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/power/xlnx-zynqmp-power.h" 1
# 20 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/reset/xlnx-zynqmp-resets.h" 1
# 21 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/thermal/thermal.h" 1
# 22 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp.dtsi" 2

/ {
 compatible = "xlnx,zynqmp";
 #address-cells = <2>;
 #size-cells = <2>;
 model = "Xilinx ZynqMP";

 options {
  u-boot {
   compatible = "u-boot,config";
   bootscr-address = /bits/ 64 <0x20000000>;
  };
 };

 cpus_a53: cpus-a53@0 {
  #address-cells = <1>;
  #size-cells = <0>;

  psu_cortexa53_0: cpu@0 {
   #cooling-cells = <2>;
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   operating-points-v2 = <&cpu_opp_table>;
   reg = <0x0>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_1: cpu@1 {
   #cooling-cells = <2>;
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x1>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_2: cpu@2 {
   #cooling-cells = <2>;
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x2>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  psu_cortexa53_3: cpu@3 {
   #cooling-cells = <2>;
   compatible = "arm,cortex-a53";
   device_type = "cpu";
   enable-method = "psci";
   reg = <0x3>;
   operating-points-v2 = <&cpu_opp_table>;
   cpu-idle-states = <&CPU_SLEEP_0>;
   next-level-cache = <&L2>;
  };

  L2: l2-cache {
   compatible = "cache";
   cache-level = <2>;
   cache-unified;
  };

  idle-states {
   entry-method = "psci";

   CPU_SLEEP_0: cpu-sleep-0 {
    compatible = "arm,idle-state";
    arm,psci-suspend-param = <0x40000000>;
    local-timer-stop;
    entry-latency-us = <300>;
    exit-latency-us = <600>;
    min-residency-us = <10000>;
   };
  };
 };

 cpus_r5_0: cpus-r5@0 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_cortexr5_0: cpu@0 {
   compatible = "arm,cortex-r5", "arm,armv8";
   device_type = "cpu";
   reg = <0x0>;
   power-domains = <&zynqmp_firmware 7>;
  };
 };

 cpus_r5_1: cpus-r5@1 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_cortexr5_1: cpu@1 {
   compatible = "arm,cortex-r5", "arm,armv8";
   device_type = "cpu";
   reg = <0x1>;
   power-domains = <&zynqmp_firmware 8>;
  };
 };

 cpus_microblaze_0: cpus_microblaze@0 {
  #address-cells = <1>;
  #size-cells = <0>;
  psu_pmu_0: cpu@0 {
   compatible = "pmu-microblaze";
   device_type = "cpu";
   reg = <0x0>;
   operating-points-v2 = <&cpu_opp_table>;
  };
 };

 cpu_opp_table: opp-table-cpu {
  compatible = "operating-points-v2";
  opp-shared;
  opp00 {
   opp-hz = /bits/ 64 <1199999988>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp01 {
   opp-hz = /bits/ 64 <599999994>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp02 {
   opp-hz = /bits/ 64 <399999996>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
  opp03 {
   opp-hz = /bits/ 64 <299999997>;
   opp-microvolt = <1000000>;
   clock-latency-ns = <500000>;
  };
 };

 zynqmp_ipi: zynqmp-ipi {
  bootph-all;
  compatible = "xlnx,zynqmp-ipi-mailbox";
  interrupt-parent = <&imux>;
  interrupts = <0 35 4>;
  xlnx,ipi-id = <0>;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;

  ipi_mailbox_pmu1: mailbox@ff9905c0 {
   bootph-all;
   compatible = "xlnx,zynqmp-ipi-dest-mailbox";
   reg = <0x0 0xff9905c0 0x0 0x20>,
         <0x0 0xff9905e0 0x0 0x20>,
         <0x0 0xff990e80 0x0 0x20>,
         <0x0 0xff990ea0 0x0 0x20>;
   reg-names = "local_request_region",
        "local_response_region",
        "remote_request_region",
        "remote_response_region";
   #mbox-cells = <1>;
   xlnx,ipi-id = <4>;
  };
 };

 dcc: dcc {
  compatible = "arm,dcc";
  status = "disabled";
  bootph-all;
 };

 pmu {
  compatible = "arm,cortex-a53-pmu";
  interrupt-parent = <&imux>;
  interrupts = <0 143 4>,
        <0 144 4>,
        <0 145 4>,
        <0 146 4>;
  interrupt-affinity = <&psu_cortexa53_0>,
         <&psu_cortexa53_1>,
         <&psu_cortexa53_2>,
         <&psu_cortexa53_3>;
 };

 psci {
  compatible = "arm,psci-0.2";
  method = "smc";
 };

  firmware {
  zynqmp_firmware: zynqmp-firmware {
   compatible = "xlnx,zynqmp-firmware";
   #power-domain-cells = <1>;
   method = "smc";
   bootph-all;

   zynqmp_power: power-management {
    bootph-all;
    compatible = "xlnx,zynqmp-power";
    interrupt-parent = <&imux>;
    interrupts = <0 35 4>;
    mboxes = <&ipi_mailbox_pmu1 0>, <&ipi_mailbox_pmu1 1>;
    mbox-names = "tx", "rx";
   };

   soc-nvmem {
    compatible = "xlnx,zynqmp-nvmem-fw";
    nvmem-layout {
     compatible = "fixed-layout";
     #address-cells = <1>;
     #size-cells = <1>;

     soc_revision: soc-revision@0 {
      reg = <0x0 0x4>;
     };

     efuse_dna: efuse-dna@c {
      reg = <0xc 0xc>;
     };
     efuse_usr0: efuse-usr0@20 {
      reg = <0x20 0x4>;
     };
     efuse_usr1: efuse-usr1@24 {
      reg = <0x24 0x4>;
     };
     efuse_usr2: efuse-usr2@28 {
      reg = <0x28 0x4>;
     };
     efuse_usr3: efuse-usr3@2c {
      reg = <0x2c 0x4>;
     };
     efuse_usr4: efuse-usr4@30 {
      reg = <0x30 0x4>;
     };
     efuse_usr5: efuse-usr5@34 {
      reg = <0x34 0x4>;
     };
     efuse_usr6: efuse-usr6@38 {
      reg = <0x38 0x4>;
     };
     efuse_usr7: efuse-usr7@3c {
      reg = <0x3c 0x4>;
     };
     efuse_miscusr: efuse-miscusr@40 {
      reg = <0x40 0x4>;
     };
     efuse_chash: efuse-chash@50 {
      reg = <0x50 0x4>;
     };
     efuse_pufmisc: efuse-pufmisc@54 {
      reg = <0x54 0x4>;
     };
     efuse_sec: efuse-sec@58 {
      reg = <0x58 0x4>;
     };
     efuse_spkid: efuse-spkid@5c {
      reg = <0x5c 0x4>;
     };
     efuse_aeskey: efuse-aeskey@60 {
      reg = <0x60 0x20>;
     };
     efuse_ppk0hash: efuse-ppk0hash@a0 {
      reg = <0xa0 0x30>;
     };
     efuse_ppk1hash: efuse-ppk1hash@d0 {
      reg = <0xd0 0x30>;
     };
     efuse_pufuser: efuse-pufuser@100 {
      reg = <0x100 0x7F>;
     };
    };
   };

   zynqmp_pcap: pcap {
    compatible = "xlnx,zynqmp-pcap-fpga";
   };

   zynqmp_reset: reset-controller {
    compatible = "xlnx,zynqmp-reset";
    #reset-cells = <1>;
   };

   pinctrl0: pinctrl {
    compatible = "xlnx,zynqmp-pinctrl";
    status = "disabled";
   };

   modepin_gpio: gpio {
    compatible = "xlnx,zynqmp-gpio-modepin";
    gpio-controller;
    #gpio-cells = <2>;
   };
  };
 };

 timer {
  compatible = "arm,armv8-timer";
  interrupt-parent = <&imux>;
  interrupts = <1 13 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 14 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 11 ((((1 << (4)) - 1) << 8) | 8)>,
        <1 10 ((((1 << (4)) - 1) << 8) | 8)>;
 };

 fpga_full: fpga-region {
  compatible = "fpga-region";
  fpga-mgr = <&zynqmp_pcap>;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;
 };

 ams {
  compatible = "iio-hwmon";
  io-channels = <&xilinx_ams 0>, <&xilinx_ams 1>, <&xilinx_ams 2>,
   <&xilinx_ams 3>, <&xilinx_ams 4>, <&xilinx_ams 5>,
   <&xilinx_ams 6>, <&xilinx_ams 7>, <&xilinx_ams 8>,
   <&xilinx_ams 9>, <&xilinx_ams 10>, <&xilinx_ams 11>,
   <&xilinx_ams 12>, <&xilinx_ams 13>, <&xilinx_ams 14>,
   <&xilinx_ams 15>, <&xilinx_ams 16>, <&xilinx_ams 17>,
   <&xilinx_ams 18>, <&xilinx_ams 19>, <&xilinx_ams 20>,
   <&xilinx_ams 21>, <&xilinx_ams 22>, <&xilinx_ams 23>,
   <&xilinx_ams 24>, <&xilinx_ams 25>, <&xilinx_ams 26>,
   <&xilinx_ams 27>, <&xilinx_ams 28>, <&xilinx_ams 29>;
 };


 tsens_apu: thermal-sensor-apu {
  compatible = "generic-adc-thermal";
  #thermal-sensor-cells = <0>;
  io-channels = <&xilinx_ams 7>;
  io-channel-names = "sensor-channel";
 };

 tsens_rpu: thermal-sensor-rpu {
  compatible = "generic-adc-thermal";
  #thermal-sensor-cells = <0>;
  io-channels = <&xilinx_ams 8>;
  io-channel-names = "sensor-channel";
 };

 tsens_pl: thermal-sensor-pl {
  compatible = "generic-adc-thermal";
  #thermal-sensor-cells = <0>;
  io-channels = <&xilinx_ams 20>;
  io-channel-names = "sensor-channel";
 };

 thermal-zones {
  apu-thermal {
   polling-delay-passive = <1000>;
   polling-delay = <5000>;
   thermal-sensors = <&tsens_apu>;

   trips {
    apu_passive: passive {
     temperature = <93000>;
     hysteresis = <3500>;
     type = "passive";
    };

    apu_critical: critical {
     temperature = <96500>;
     hysteresis = <3500>;
     type = "critical";
    };
   };

   cooling-maps {
    map {
     trip = <&apu_passive>;
     cooling-device =
      <&psu_cortexa53_0 (~0) (~0)>,
      <&psu_cortexa53_1 (~0) (~0)>,
      <&psu_cortexa53_2 (~0) (~0)>,
      <&psu_cortexa53_3 (~0) (~0)>;
    };
   };
  };

  rpu-thermal {
   polling-delay = <10000>;
   thermal-sensors = <&tsens_rpu>;

   trips {
    critical {
     temperature = <96500>;
     hysteresis = <3500>;
     type = "critical";
    };
   };
  };

  pl-thermal {
   polling-delay = <10000>;
   thermal-sensors = <&tsens_pl>;

   trips {
    critical {
     temperature = <96500>;
     hysteresis = <3500>;
     type = "critical";
    };
   };
  };
 };

 amba_apu: apu-bus {
  compatible = "simple-bus";
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;

  gic_a53: interrupt-controller@f9010000 {
   compatible = "arm,gic-400";
   #interrupt-cells = <3>;
   reg = <0x0 0xf9010000 0x0 0x10000>,
         <0x0 0xf9020000 0x0 0x20000>,
         <0x0 0xf9040000 0x0 0x20000>,
         <0x0 0xf9060000 0x0 0x20000>;
   interrupt-controller;
   interrupt-parent = <&gic_a53>;
   interrupts = <1 9 0xf04>;
   status = "disabled";
  };
 };

 amba_rpu: rpu-bus {
  compatible = "indirect-bus";
  #address-cells = <2>;
  #size-cells = <1>;
  gic_r5: interrupt-controller@f9000000 {
   compatible = "arm,gic-400";
   #interrupt-cells = <3>;
   reg = <0x0 0xf9000000 0x10000>,
         <0x0 0xf9001000 0x10000>;
   interrupt-controller;
   interrupt-parent = <&gic_r5>;
   interrupts = <1 9 0xf04>;
   status = "disabled";
  };
 };

 amba: axi {
  compatible = "simple-bus";
  bootph-all;
  #address-cells = <2>;
  #size-cells = <2>;
  ranges;
  interrupt-parent = <&imux>;


  imux: interrupt-multiplex {
   compatible = "interrupt-multiplex";
   #address-cells = <0x0>;
   #interrupt-cells = <3>;
   interrupt-controller;
   interrupt-parent = <&gic_a53>, <&gic_r5>;

   interrupt-map-mask = <0x0 0xffff 0x0>;


   interrupt-map = <0x0 0x17 0x0 &gic_a53 0x0 0x17 0x1>,
    <0x0 0x18 0x0 &gic_a53 0x0 0x18 0x1>,
    <0x0 0x7b 0x0 &gic_a53 0x0 0x7b 0x4>,
    <0x0 0x56 0x0 &gic_a53 0x0 0x56 0x4>,
    <0x0 0x7c 0x0 &gic_a53 0x0 0x7c 0x4>,
    <0x0 0x7d 0x0 &gic_a53 0x0 0x7d 0x4>,
    <0x0 0x7e 0x0 &gic_a53 0x0 0x8e 0x4>,
    <0x0 0x7f 0x0 &gic_a53 0x0 0x7f 0x4>,
    <0x0 0x80 0x0 &gic_a53 0x0 0x80 0x4>,
    <0x0 0x81 0x0 &gic_a53 0x0 0x81 0x4>,
    <0x0 0x82 0x0 &gic_a53 0x0 0x82 0x4>,
    <0x0 0x83 0x0 &gic_a53 0x0 0x83 0x4>,
    <0x0 0x84 0x0 &gic_a53 0x0 0x84 0x4>,
    <0x0 0x4d 0x0 &gic_a53 0x0 0x4d 0x4>,
    <0x0 0x4e 0x0 &gic_a53 0x0 0x4e 0x4>,
    <0x0 0x4f 0x0 &gic_a53 0x0 0x4f 0x4>,
    <0x0 0x50 0x0 &gic_a53 0x0 0x50 0x4>,
    <0x0 0x51 0x0 &gic_a53 0x0 0x51 0x4>,
    <0x0 0x52 0x0 &gic_a53 0x0 0x52 0x4>,
    <0x0 0x53 0x0 &gic_a53 0x0 0x53 0x4>,
    <0x0 0x54 0x0 &gic_a53 0x0 0x54 0x4>,
    <0x0 0x70 0x0 &gic_a53 0x0 0x70 0x4>,
    <0x0 0xe 0x0 &gic_a53 0x0 0xe 0x4>,
    <0x0 0x39 0x0 &gic_a53 0x0 0x39 0x4>,
    <0x0 0x3b 0x0 &gic_a53 0x0 0x3b 0x4>,
    <0x0 0x3d 0x0 &gic_a53 0x0 0x3d 0x4>,
    <0x0 0x3f 0x0 &gic_a53 0x0 0x3f 0x4>,
    <0x0 0x10 0x0 &gic_a53 0x0 0x10 0x4>,
    <0x0 0x11 0x0 &gic_a53 0x0 0x11 0x4>,
    <0x0 0x12 0x0 &gic_a53 0x0 0x12 0x4>,
    <0x0 0xa 0x0 &gic_a53 0x0 0xa 0x4>,
    <0x0 0x72 0x0 &gic_a53 0x0 0x72 0x4>,
    <0x0 0x73 0x0 &gic_a53 0x0 0x73 0x4>,
    <0x0 0x74 0x0 &gic_a53 0x0 0x74 0x1>,
    <0x0 0x75 0x0 &gic_a53 0x0 0x75 0x1>,
    <0x0 0x76 0x0 &gic_a53 0x0 0x76 0x4>,
    <0x0 0xf 0x0 &gic_a53 0x0 0xf 0x4>,
    <0x0 0x1a 0x0 &gic_a53 0x0 0x1a 0x4>,
    <0x0 0x1b 0x0 &gic_a53 0x0 0x1b 0x4>,
    <0x0 0x85 0x0 &gic_a53 0x0 0x85 0x4>,
    <0x0 0x30 0x0 &gic_a53 0x0 0x30 0x4>,
    <0x0 0x31 0x0 &gic_a53 0x0 0x31 0x4>,
    <0x0 0x13 0x0 &gic_a53 0x0 0x13 0x4>,
    <0x0 0x14 0x0 &gic_a53 0x0 0x14 0x4>,
    <0x0 0x24 0x0 &gic_a53 0x0 0x24 0x4>,
    <0x0 0x25 0x0 &gic_a53 0x0 0x25 0x4>,
    <0x0 0x26 0x0 &gic_a53 0x0 0x26 0x4>,
    <0x0 0x27 0x0 &gic_a53 0x0 0x27 0x4>,
    <0x0 0x28 0x0 &gic_a53 0x0 0x28 0x4>,
    <0x0 0x29 0x0 &gic_a53 0x0 0x29 0x4>,
    <0x0 0x2a 0x0 &gic_a53 0x0 0x2a 0x4>,
    <0x0 0x2b 0x0 &gic_a53 0x0 0x2b 0x4>,
    <0x0 0x2c 0x0 &gic_a53 0x0 0x2c 0x4>,
    <0x0 0x2d 0x0 &gic_a53 0x0 0x2d 0x4>,
    <0x0 0x2e 0x0 &gic_a53 0x0 0x2e 0x4>,
    <0x0 0x2f 0x0 &gic_a53 0x0 0x2f 0x4>,
    <0x0 0x15 0x0 &gic_a53 0x0 0x15 0x4>,
    <0x0 0x16 0x0 &gic_a53 0x0 0x16 0x4>,
    <0x0 0x41 0x0 &gic_a53 0x0 0x41 0x4>,
    <0x0 0x45 0x0 &gic_a53 0x0 0x45 0x4>,
    <0x0 0x4b 0x0 &gic_a53 0x0 0x4b 0x4>,
    <0x0 0x46 0x0 &gic_a53 0x0 0x46 0x4>,
    <0x0 0x4a 0x0 &gic_a53 0x0 0x4a 0x4>,
    <0x0 0x4c 0x0 &gic_a53 0x0 0x4c 0x4>,
    <0x0 0x35 0x0 &gic_a53 0x0 0x35 0x4>,
    <0x0 0x71 0x0 &gic_a53 0x0 0x71 0x4>,
    <0x0 0x77 0x0 &gic_a53 0x0 0x77 0x4>,
    <0x0 0x1d 0x0 &gic_a53 0x0 0x1d 0x4>,
    <0x0 0x1e 0x0 &gic_a53 0x0 0x1e 0x4>,
    <0x0 0x1f 0x0 &gic_a53 0x0 0x1f 0x4>,
    <0x0 0x20 0x0 &gic_a53 0x0 0x20 0x4>,
    <0x0 0x21 0x0 &gic_a53 0x0 0x21 0x4>,
    <0x0 0x22 0x0 &gic_a53 0x0 0x22 0x4>,
    <0x0 0x23 0x0 &gic_a53 0x0 0x23 0x4>,
    <0x0 0x7a 0x0 &gic_a53 0x0 0x7a 0x4>,
    <0x0 0x17 0x0 &gic_r5 0x0 0x17 0x1>,
    <0x0 0x18 0x0 &gic_r5 0x0 0x18 0x1>,
    <0x0 0x7b 0x0 &gic_r5 0x0 0x7b 0x4>,
    <0x0 0x56 0x0 &gic_r5 0x0 0x56 0x4>,
    <0x0 0x7c 0x0 &gic_r5 0x0 0x7c 0x4>,
    <0x0 0x7d 0x0 &gic_r5 0x0 0x7d 0x4>,
    <0x0 0x7e 0x0 &gic_r5 0x0 0x8e 0x4>,
    <0x0 0x7f 0x0 &gic_r5 0x0 0x7f 0x4>,
    <0x0 0x80 0x0 &gic_r5 0x0 0x80 0x4>,
    <0x0 0x81 0x0 &gic_r5 0x0 0x81 0x4>,
    <0x0 0x82 0x0 &gic_r5 0x0 0x82 0x4>,
    <0x0 0x83 0x0 &gic_r5 0x0 0x83 0x4>,
    <0x0 0x84 0x0 &gic_r5 0x0 0x84 0x4>,
    <0x0 0x4d 0x0 &gic_r5 0x0 0x4d 0x4>,
    <0x0 0x4e 0x0 &gic_r5 0x0 0x4e 0x4>,
    <0x0 0x4f 0x0 &gic_r5 0x0 0x4f 0x4>,
    <0x0 0x50 0x0 &gic_r5 0x0 0x50 0x4>,
    <0x0 0x51 0x0 &gic_r5 0x0 0x51 0x4>,
    <0x0 0x52 0x0 &gic_r5 0x0 0x52 0x4>,
    <0x0 0x53 0x0 &gic_r5 0x0 0x53 0x4>,
    <0x0 0x54 0x0 &gic_r5 0x0 0x54 0x4>,
    <0x0 0x70 0x0 &gic_r5 0x0 0x70 0x4>,
    <0x0 0xe 0x0 &gic_r5 0x0 0xe 0x4>,
    <0x0 0x39 0x0 &gic_r5 0x0 0x39 0x4>,
    <0x0 0x3b 0x0 &gic_r5 0x0 0x3b 0x4>,
    <0x0 0x3d 0x0 &gic_r5 0x0 0x3d 0x4>,
    <0x0 0x3f 0x0 &gic_r5 0x0 0x3f 0x4>,
    <0x0 0x10 0x0 &gic_r5 0x0 0x10 0x4>,
    <0x0 0x11 0x0 &gic_r5 0x0 0x11 0x4>,
    <0x0 0x12 0x0 &gic_r5 0x0 0x12 0x4>,
    <0x0 0xa 0x0 &gic_r5 0x0 0xa 0x4>,
    <0x0 0x72 0x0 &gic_r5 0x0 0x72 0x4>,
    <0x0 0x73 0x0 &gic_r5 0x0 0x73 0x4>,
    <0x0 0x74 0x0 &gic_r5 0x0 0x74 0x1>,
    <0x0 0x75 0x0 &gic_r5 0x0 0x75 0x1>,
    <0x0 0x76 0x0 &gic_r5 0x0 0x76 0x4>,
    <0x0 0xf 0x0 &gic_r5 0x0 0xf 0x4>,
    <0x0 0x1a 0x0 &gic_r5 0x0 0x1a 0x4>,
    <0x0 0x1b 0x0 &gic_r5 0x0 0x1b 0x4>,
    <0x0 0x85 0x0 &gic_r5 0x0 0x85 0x4>,
    <0x0 0x30 0x0 &gic_r5 0x0 0x30 0x4>,
    <0x0 0x31 0x0 &gic_r5 0x0 0x31 0x4>,
    <0x0 0x13 0x0 &gic_r5 0x0 0x13 0x4>,
    <0x0 0x14 0x0 &gic_r5 0x0 0x14 0x4>,
    <0x0 0x24 0x0 &gic_r5 0x0 0x24 0x4>,
    <0x0 0x25 0x0 &gic_r5 0x0 0x25 0x4>,
    <0x0 0x26 0x0 &gic_r5 0x0 0x26 0x4>,
    <0x0 0x27 0x0 &gic_r5 0x0 0x27 0x4>,
    <0x0 0x28 0x0 &gic_r5 0x0 0x28 0x4>,
    <0x0 0x29 0x0 &gic_r5 0x0 0x29 0x4>,
    <0x0 0x2a 0x0 &gic_r5 0x0 0x2a 0x4>,
    <0x0 0x2b 0x0 &gic_r5 0x0 0x2b 0x4>,
    <0x0 0x2c 0x0 &gic_r5 0x0 0x2c 0x4>,
    <0x0 0x2d 0x0 &gic_r5 0x0 0x2d 0x4>,
    <0x0 0x2e 0x0 &gic_r5 0x0 0x2e 0x4>,
    <0x0 0x2f 0x0 &gic_r5 0x0 0x2f 0x4>,
    <0x0 0x15 0x0 &gic_r5 0x0 0x15 0x4>,
    <0x0 0x16 0x0 &gic_r5 0x0 0x16 0x4>,
    <0x0 0x41 0x0 &gic_r5 0x0 0x41 0x4>,
    <0x0 0x45 0x0 &gic_r5 0x0 0x45 0x4>,
    <0x0 0x4b 0x0 &gic_r5 0x0 0x4b 0x4>,
    <0x0 0x46 0x0 &gic_r5 0x0 0x46 0x4>,
    <0x0 0x4a 0x0 &gic_r5 0x0 0x4a 0x4>,
    <0x0 0x4c 0x0 &gic_r5 0x0 0x4c 0x4>,
    <0x0 0x35 0x0 &gic_r5 0x0 0x35 0x4>,
    <0x0 0x71 0x0 &gic_r5 0x0 0x71 0x4>,
    <0x0 0x77 0x0 &gic_r5 0x0 0x77 0x4>,
    <0x0 0x1d 0x0 &gic_r5 0x0 0x1d 0x4>,
    <0x0 0x1e 0x0 &gic_r5 0x0 0x1e 0x4>,
    <0x0 0x1f 0x0 &gic_r5 0x0 0x1f 0x4>,
    <0x0 0x20 0x0 &gic_r5 0x0 0x20 0x4>,
    <0x0 0x21 0x0 &gic_r5 0x0 0x21 0x4>,
    <0x0 0x22 0x0 &gic_r5 0x0 0x22 0x4>,
    <0x0 0x23 0x0 &gic_r5 0x0 0x23 0x4>,
    <0x0 0x7a 0x0 &gic_r5 0x0 0x7a 0x4>;
  };

  can0: can@ff060000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clock-names = "can_clk", "pclk";
   reg = <0x0 0xff060000 0x0 0x1000>;
   interrupts = <0 23 4>;
   interrupt-parent = <&imux>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
   resets = <&zynqmp_reset 40>;
   power-domains = <&zynqmp_firmware 47>;
  };

  can1: can@ff070000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clock-names = "can_clk", "pclk";
   reg = <0x0 0xff070000 0x0 0x1000>;
   interrupts = <0 24 4>;
   interrupt-parent = <&imux>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
   resets = <&zynqmp_reset 41>;
   power-domains = <&zynqmp_firmware 48>;
  };

  cci: cci@fd6e0000 {
   compatible = "arm,cci-400";
   status = "disabled";
   reg = <0x0 0xfd6e0000 0x0 0x9000>;
   ranges = <0x0 0x0 0xfd6e0000 0x10000>;
   #address-cells = <1>;
   #size-cells = <1>;

   pmu@9000 {
    compatible = "arm,cci-400-pmu,r1";
    reg = <0x9000 0x5000>;
    interrupt-parent = <&imux>;
    interrupts = <0 123 4>,
          <0 123 4>,
          <0 123 4>,
          <0 123 4>,
          <0 123 4>;
   };
  };

  psu_cortexa53_0_debug: debug@fec10000 {
                       compatible = "arm,coresight-cpu-debug", "arm,primecell";
                       reg = <0x0 0xfec10000 0x0 0x1000>;
                       clock-names = "apb_pclk";
                       cpu = <&psu_cortexa53_0>;
               };

               psu_cortexa53_1_debug: debug@fed10000 {
                       compatible = "arm,coresight-cpu-debug", "arm,primecell";
                       reg = <0x0 0xfed10000 0x0 0x1000>;
                       clock-names = "apb_pclk";
                       cpu = <&psu_cortexa53_1>;
               };

               psu_cortexa53_2_debug: debug@fee10000 {
                       compatible = "arm,coresight-cpu-debug", "arm,primecell";
                       reg = <0x0 0xfee10000 0x0 0x1000>;
                       clock-names = "apb_pclk";
                       cpu = <&psu_cortexa53_2>;
               };

               psu_cortexa53_3_debug: debug@fef10000 {
                       compatible = "arm,coresight-cpu-debug", "arm,primecell";
                       reg = <0x0 0xfef10000 0x0 0x1000>;
                       clock-names = "apb_pclk";
                       cpu = <&psu_cortexa53_3>;
               };


  fpd_dma_chan1: dma-controller@fd500000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd500000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 124 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan2: dma-controller@fd510000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd510000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 125 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan3: dma-controller@fd520000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd520000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 126 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan4: dma-controller@fd530000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd530000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 127 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan5: dma-controller@fd540000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd540000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 128 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan6: dma-controller@fd550000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd550000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 129 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan7: dma-controller@fd560000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd560000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 130 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  fpd_dma_chan8: dma-controller@fd570000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xfd570000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 131 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <128>;

   power-domains = <&zynqmp_firmware 42>;
  };

  gpu: gpu@fd4b0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-mali", "arm,mali-400";
   reg = <0x0 0xfd4b0000 0x0 0x10000>;
   interrupt-parent = <&imux>;
   interrupts = <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>,
      <0 132 4>;
   interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
   clock-names = "bus", "core";
   power-domains = <&zynqmp_firmware 58>;
  };





  lpd_dma_chan1: dma-controller@ffa80000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffa80000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 77 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan2: dma-controller@ffa90000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffa90000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 78 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan3: dma-controller@ffaa0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffaa0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 79 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan4: dma-controller@ffab0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffab0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 80 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan5: dma-controller@ffac0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffac0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 81 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan6: dma-controller@ffad0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffad0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 82 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan7: dma-controller@ffae0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffae0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 83 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  lpd_dma_chan8: dma-controller@ffaf0000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-dma-1.0";
   reg = <0x0 0xffaf0000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 84 4>;
   clock-names = "clk_main", "clk_apb";
   #dma-cells = <1>;
   xlnx,bus-width = <64>;

   power-domains = <&zynqmp_firmware 43>;
  };

  mc: memory-controller@fd070000 {
   compatible = "xlnx,zynqmp-ddrc-2.40a";
   reg = <0x0 0xfd070000 0x0 0x30000>;
   interrupt-parent = <&imux>;
   interrupts = <0 112 4>;
  };

  nand0: nand-controller@ff100000 {
   compatible = "xlnx,zynqmp-nand-controller", "arasan,nfc-v3p10";
   status = "disabled";
   reg = <0x0 0xff100000 0x0 0x1000>;
   clock-names = "controller", "bus";
   interrupt-parent = <&imux>;
   interrupts = <0 14 4>;
   #address-cells = <1>;
   #size-cells = <0>;

   power-domains = <&zynqmp_firmware 44>;
  };

  gem0: ethernet@ff0b0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 57 4>,
      <0 57 4>;
   reg = <0x0 0xff0b0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 29>;
   resets = <&zynqmp_reset 29>;
   reset-names = "gem0_rst";
  };

  gem1: ethernet@ff0c0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 59 4>,
      <0 59 4>;
   reg = <0x0 0xff0c0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 30>;
   resets = <&zynqmp_reset 30>;
   reset-names = "gem1_rst";
  };

  gem2: ethernet@ff0d0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 61 4>,
      <0 61 4>;
   reg = <0x0 0xff0d0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 31>;
   resets = <&zynqmp_reset 31>;
   reset-names = "gem2_rst";
  };

  gem3: ethernet@ff0e0000 {
   compatible = "xlnx,zynqmp-gem", "cdns,gem";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 63 4>,
      <0 63 4>;
   reg = <0x0 0xff0e0000 0x0 0x1000>;
   clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";

   power-domains = <&zynqmp_firmware 32>;
   resets = <&zynqmp_reset 32>;
   reset-names = "gem3_rst";
  };

  gpio: gpio@ff0a0000 {
   compatible = "xlnx,zynqmp-gpio-1.0";
   status = "disabled";
   #gpio-cells = <0x2>;
   gpio-controller;
   interrupt-parent = <&imux>;
   interrupts = <0 16 4>;
   interrupt-controller;
   #interrupt-cells = <2>;
   reg = <0x0 0xff0a0000 0x0 0x1000>;
   power-domains = <&zynqmp_firmware 46>;
  };

  i2c0: i2c@ff020000 {
   compatible = "cdns,i2c-r1p14";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 17 4>;
   clock-frequency = <400000>;
   reg = <0x0 0xff020000 0x0 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 37>;
  };

  i2c1: i2c@ff030000 {
   compatible = "cdns,i2c-r1p14";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 18 4>;
   clock-frequency = <400000>;
   reg = <0x0 0xff030000 0x0 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 38>;
  };

  ocm: memory-controller@ff960000 {
   compatible = "xlnx,zynqmp-ocmc-1.0";
   reg = <0x0 0xff960000 0x0 0x1000>;
   interrupt-parent = <&imux>;
   interrupts = <0 10 4>;
  };

  perf_monitor_ocm: perf-monitor@ffa00000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xffa00000 0x0 0x10000>;
   interrupts = <0 25 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <1>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_ddr: perf-monitor@fd0b0000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xfd0b0000 0x0 0x10000>;
   interrupts = <0 123 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <6>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <0>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <10>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_cci: perf-monitor@fd490000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xfd490000 0x0 0x10000>;
   interrupts = <0 123 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <0>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  perf_monitor_lpd: perf-monitor@ffa10000 {
   compatible = "xlnx,axi-perf-monitor";
   reg = <0x0 0xffa10000 0x0 0x10000>;
   interrupts = <0 25 4>;
   interrupt-parent = <&imux>;
   xlnx,enable-profile = <0>;
   xlnx,enable-trace = <0>;
   xlnx,num-monitor-slots = <1>;
   xlnx,enable-event-count = <1>;
   xlnx,enable-event-log = <1>;
   xlnx,have-sampled-metric-cnt = <1>;
   xlnx,num-of-counters = <8>;
   xlnx,metric-count-width = <32>;
   xlnx,metrics-sample-count-width = <32>;
   xlnx,global-count-width = <32>;
   xlnx,metric-count-scale = <1>;
  };

  pcie: pcie@fd0e0000 {
   compatible = "xlnx,nwl-pcie-2.11";
   status = "disabled";
   #address-cells = <3>;
   #size-cells = <2>;
   #interrupt-cells = <1>;
   msi-controller;
   device_type = "pci";
   interrupt-parent = <&imux>;
   interrupts = <0 118 4>,
         <0 117 4>,
         <0 116 4>,
         <0 115 4>,
         <0 114 4>;
   interrupt-names = "misc", "dummy", "intx",
       "msi1", "msi0";
   msi-parent = <&pcie>;
   reg = <0x0 0xfd0e0000 0x0 0x1000>,
         <0x0 0xfd480000 0x0 0x1000>,
         <0x80 0x00000000 0x0 0x10000000>;
   reg-names = "breg", "pcireg", "cfg";
   ranges = <0x02000000 0x00000000 0xe0000000 0x00000000 0xe0000000 0x00000000 0x10000000>,
      <0x43000000 0x00000006 0x00000000 0x00000006 0x00000000 0x00000002 0x00000000>;
   bus-range = <0x00 0xff>;
   interrupt-map-mask = <0x0 0x0 0x0 0x7>;
   interrupt-map = <0x0 0x0 0x0 0x1 &pcie_intc 0x1>,
     <0x0 0x0 0x0 0x2 &pcie_intc 0x2>,
     <0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
     <0x0 0x0 0x0 0x4 &pcie_intc 0x4>;

   power-domains = <&zynqmp_firmware 59>;
   pcie_intc: legacy-interrupt-controller {
    interrupt-controller;
    #address-cells = <0>;
    #interrupt-cells = <1>;
   };
  };

  qspi: spi@ff0f0000 {
   bootph-all;
   compatible = "xlnx,zynqmp-qspi-1.0";
   status = "disabled";
   clock-names = "ref_clk", "pclk";
   interrupts = <0 15 4>;
   interrupt-parent = <&imux>;
   num-cs = <1>;
   reg = <0x0 0xff0f0000 0x0 0x1000>,
         <0x0 0xc0000000 0x0 0x8000000>;
   #address-cells = <1>;
   #size-cells = <0>;

   power-domains = <&zynqmp_firmware 45>;
  };

  psgtr: phy@fd400000 {
   compatible = "xlnx,zynqmp-psgtr-v1.1";
   status = "disabled";
   reg = <0x0 0xfd400000 0x0 0x40000>,
         <0x0 0xfd3d0000 0x0 0x1000>;
   reg-names = "serdes", "siou";
   #phy-cells = <4>;
  };

  rtc: rtc@ffa60000 {
   compatible = "xlnx,zynqmp-rtc";
   status = "disabled";
   reg = <0x0 0xffa60000 0x0 0x100>;
   interrupt-parent = <&imux>;
   interrupts = <0 26 4>,
       <0 27 4>;
   interrupt-names = "alarm", "sec";
   calibration = <0x7FFF>;
  };

  sata: ahci@fd0c0000 {
   compatible = "ceva,ahci-1v84";
   status = "disabled";
   reg = <0x0 0xfd0c0000 0x0 0x2000>;
   interrupt-parent = <&imux>;
   interrupts = <0 133 4>;
   power-domains = <&zynqmp_firmware 28>;
   resets = <&zynqmp_reset 16>;

  };

  sdhci0: mmc@ff160000 {
   bootph-all;
   compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 48 4>;
   reg = <0x0 0xff160000 0x0 0x1000>;
   clock-names = "clk_xin", "clk_ahb";

   #clock-cells = <1>;
   clock-output-names = "clk_out_sd0", "clk_in_sd0";
   power-domains = <&zynqmp_firmware 39>;
   resets = <&zynqmp_reset 38>;
  };

  sdhci1: mmc@ff170000 {
   bootph-all;
   compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 49 4>;
   reg = <0x0 0xff170000 0x0 0x1000>;
   clock-names = "clk_xin", "clk_ahb";

   #clock-cells = <1>;
   clock-output-names = "clk_out_sd1", "clk_in_sd1";
   power-domains = <&zynqmp_firmware 40>;
   resets = <&zynqmp_reset 39>;
  };

  smmu: iommu@fd800000 {
   compatible = "arm,mmu-500";
   reg = <0x0 0xfd800000 0x0 0x20000>;
   #iommu-cells = <1>;
   status = "disabled";
   #global-interrupts = <1>;
   interrupt-parent = <&imux>;
   interrupts = <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>,
         <0 155 4>;
  };

  spi0: spi@ff040000 {
   compatible = "cdns,spi-r1p6";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 19 4>;
   reg = <0x0 0xff040000 0x0 0x1000>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 35>;
  };

  spi1: spi@ff050000 {
   compatible = "cdns,spi-r1p6";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 20 4>;
   reg = <0x0 0xff050000 0x0 0x1000>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
   power-domains = <&zynqmp_firmware 36>;
  };

  ttc0: timer@ff110000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 36 4>,
       <0 37 4>,
       <0 38 4>;
   reg = <0x0 0xff110000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 24>;
  };

  ttc1: timer@ff120000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 39 4>,
         <0 40 4>,
         <0 41 4>;
   reg = <0x0 0xff120000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 25>;
  };

  ttc2: timer@ff130000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 42 4>,
         <0 43 4>,
         <0 44 4>;
   reg = <0x0 0xff130000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 26>;
  };

  ttc3: timer@ff140000 {
   compatible = "cdns,ttc";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 45 4>,
         <0 46 4>,
         <0 47 4>;
   reg = <0x0 0xff140000 0x0 0x1000>;
   timer-width = <32>;
   power-domains = <&zynqmp_firmware 27>;
  };

  uart0: serial@ff000000 {
   bootph-all;
   compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 21 4>;
   reg = <0x0 0xff000000 0x0 0x1000>;
   clock-names = "uart_clk", "pclk";
   power-domains = <&zynqmp_firmware 33>;
   resets = <&zynqmp_reset 34>;
  };

  uart1: serial@ff010000 {
   bootph-all;
   compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 22 4>;
   reg = <0x0 0xff010000 0x0 0x1000>;
   clock-names = "uart_clk", "pclk";
   power-domains = <&zynqmp_firmware 34>;
   resets = <&zynqmp_reset 35>;
  };

  usb0: usb@ff9d0000 {
   #address-cells = <2>;
   #size-cells = <2>;
   status = "disabled";
   compatible = "xlnx,zynqmp-dwc3";
   reg = <0x0 0xff9d0000 0x0 0x100>;
   clock-names = "bus_clk", "ref_clk";
   power-domains = <&zynqmp_firmware 22>;
   resets = <&zynqmp_reset 59>,
     <&zynqmp_reset 61>,
     <&zynqmp_reset 63>;
   reset-names = "usb_crst", "usb_hibrst", "usb_apbrst";
   reset-gpios = <&modepin_gpio 1 1>;
   ranges;

   dwc3_0: usb@fe200000 {
    compatible = "snps,dwc3";
    status = "disabled";
    reg = <0x0 0xfe200000 0x0 0x40000>;
    interrupt-parent = <&imux>;
    interrupt-names = "host", "peripheral", "otg", "wakeup";
    interrupts = <0 65 4>,
          <0 65 4>,
          <0 69 4>,
          <0 75 4>;
    clock-names = "ref";

    snps,quirk-frame-length-adjustment = <0x20>;
    snps,resume-hs-terminations;

   };
  };

  usb1: usb@ff9e0000 {
   #address-cells = <2>;
   #size-cells = <2>;
   status = "disabled";
   compatible = "xlnx,zynqmp-dwc3";
   reg = <0x0 0xff9e0000 0x0 0x100>;
   clock-names = "bus_clk", "ref_clk";
   power-domains = <&zynqmp_firmware 23>;
   resets = <&zynqmp_reset 60>,
     <&zynqmp_reset 62>,
     <&zynqmp_reset 64>;
   reset-names = "usb_crst", "usb_hibrst", "usb_apbrst";

   ranges;

   dwc3_1: usb@fe300000 {
    compatible = "snps,dwc3";
    status = "disabled";
    reg = <0x0 0xfe300000 0x0 0x40000>;
    interrupt-parent = <&imux>;
    interrupt-names = "host", "peripheral", "otg", "wakeup";
    interrupts = <0 70 4>,
          <0 70 4>,
          <0 74 4>,
          <0 76 4>;
    clock-names = "ref";

    snps,quirk-frame-length-adjustment = <0x20>;
    snps,resume-hs-terminations;

   };
  };

  watchdog0: watchdog@fd4d0000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 113 1>;
   reg = <0x0 0xfd4d0000 0x0 0x1000>;
   timeout-sec = <60>;
   reset-on-timeout;
  };

  lpd_watchdog: watchdog@ff150000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 52 1>;
   reg = <0x0 0xff150000 0x0 0x1000>;
   timeout-sec = <10>;
  };

  xilinx_ams: ams@ffa50000 {
   compatible = "xlnx,zynqmp-ams";
   interrupt-parent = <&imux>;
   interrupts = <0 56 4>;
   reg = <0x0 0xffa50000 0x0 0x800>;
   #address-cells = <1>;
   #size-cells = <1>;
   #io-channel-cells = <1>;
   ranges = <0 0 0xffa50800 0x800>;

   ams_ps: ams-ps@0 {
    compatible = "xlnx,zynqmp-ams-ps";
    status = "disabled";
    reg = <0x0 0x400>;
   };

   ams_pl: ams-pl@400 {
    compatible = "xlnx,zynqmp-ams-pl";
    status = "disabled";
    reg = <0x400 0x400>;
   };
  };

  zynqmp_dpdma: dma-controller@fd4c0000 {
   compatible = "xlnx,zynqmp-dpdma";
   status = "disabled";
   reg = <0x0 0xfd4c0000 0x0 0x1000>;
   interrupts = <0 122 4>;
   interrupt-parent = <&imux>;
   clock-names = "axi_clk";
   power-domains = <&zynqmp_firmware 41>;
   dma-channels = <6>;

   #dma-cells = <1>;
  };

  zynqmp_dpsub: display@fd4a0000 {
   bootph-all;
   compatible = "xlnx,zynqmp-dpsub-1.7";
   status = "disabled";
   reg = <0x0 0xfd4a0000 0x0 0x1000>,
         <0x0 0xfd4aa000 0x0 0x1000>,
         <0x0 0xfd4ab000 0x0 0x1000>,
         <0x0 0xfd4ac000 0x0 0x1000>;
   reg-names = "dp", "blend", "av_buf", "aud";
   interrupts = <0 119 4>;
   interrupt-parent = <&imux>;

   clock-names = "dp_apb_clk", "dp_aud_clk",
          "dp_vtc_pixel_clk_in";
   power-domains = <&zynqmp_firmware 41>;
   resets = <&zynqmp_reset 3>;
   dma-names = "vid0", "vid1", "vid2", "gfx0",
        "aud0", "aud1";
   dmas = <&zynqmp_dpdma 0>,
    <&zynqmp_dpdma 1>,
    <&zynqmp_dpdma 2>,
    <&zynqmp_dpdma 3>,
    <&zynqmp_dpdma 4>,
    <&zynqmp_dpdma 5>;
   ports {
    #address-cells = <1>;
    #size-cells = <0>;

    live_video: port@0 {
     reg = <0>;
    };
    live_gfx: port@1 {
     reg = <1>;
    };
    live_audio: port@2 {
     reg = <2>;
    };
    out_video: port@3 {
     reg = <3>;
    };
    out_audio: port@4 {
     reg = <4>;
    };
    out_dp: port@5 {
     reg = <5>;
    };
   };
  };

  csuwdt_0: watchdog@ffcb0000 {
   compatible = "cdns,wdt-r1p2";
   status = "disabled";
   interrupt-parent = <&imux>;
   interrupts = <0 53 1>;
   reg = <0x0 0xffcb0000 0x0 0x1000>;
   timeout-sec = <60>;
   reset-on-timeout;
   xlnx,clock-freq = <99990005>;
  };

  coresight_0: coresight@fe800000 {
   compatible = "xlnx,coresight-1.0";
   status = "disabled";
   reg = <0x0 0xfe800000 0x0 0x10000>;
  };


  csudma_0: dma@ffc80000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-csudma-1.0";
   interrupt-parent = <&imux>;
   interrupts = <0 86 4>;
   reg = <0x0 0xffc80000 0x0 0x40000>;
  };

  ipi0: ipi@ff300000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 35 4>;
   reg = <0x0 0xff300000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x1>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi1: ipi@ff310000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 33 4>;
   reg = <0x0 0xff310000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x100>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi2: ipi@ff320000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 34 4>;
   reg = <0x0 0xff320000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x200>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi3: ipi@ff330000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff330000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x10000>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi4: ipi@ff331000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff331000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x20000U>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi5: ipi@ff332000 {
   compatible = "xlnx,zynqmp-ipi-mailbox";
   status = "disabled";
   reg = <0x0 0xff332000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x40000>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi6: ipi@ff333000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   reg = <0x0 0xff333000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x80000>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi7: ipi@ff340000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 29 4>;
   reg = <0x0 0xff340000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x1000000>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;
  };

  ipi8: ipi@ff350000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 30 4>;
   reg = <0x0 0xff350000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x2000000>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };

  ipi9: ipi@ff360000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 31 4>;
   reg = <0x0 0xff360000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x4000000>;
   xlnx,ipi-id = <9>;
   xlnx,ipi-buf-index = <5>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };

  ipi10: ipi@ff370000 {
   status = "disabled";
   compatible = "xlnx,zynqmp-ipi-mailbox";
   interrupt-parent = <&imux>;
   interrupts = <0 32 4>;
   reg = <0x0 0xff370000 0x0 0x20>;
   xlnx,ipi-bitmask = <0x8000000>;
   xlnx,ipi-id = <10>;
   xlnx,ipi-buf-index = <5>;
   #address-cells = <2>;
   #size-cells = <2>;
   bootph-all;
   ranges;

  };
 };

 amba_xppu: indirect-bus@1 {
                compatible = "indirect-bus";
                #address-cells = <0x2>;
                #size-cells = <0x2>;
                lpd_xppu: xppu@ff980000 {
                        compatible = "xlnx,xppu";
                        #firewall-cells = <0x0>;
                        reg = <0x0 0xff980000 0x0 0x1000>;
                        status = "disabled";
                };
 };
};
# 3 "/tmp/tmpe9hemm83" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp-u-boot.dtsi" 1







/{
 binman: binman{
       };
};
# 4 "/tmp/tmpe9hemm83" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp-clk-ccf.dtsi" 1
# 11 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp-clk-ccf.dtsi"
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/clock/xlnx-zynqmp-clk.h" 1
# 12 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zynqmp-clk-ccf.dtsi" 2
/ {
 pss_ref_clk: pss-ref-clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <33333333>;
  clock-output-names = "pss_ref_clk";
 };

 video_clk: video-clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <27000000>;
  clock-output-names = "video_clk";
 };

 pss_alt_ref_clk: pss-alt-ref-clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <0>;
  clock-output-names = "pss_alt_ref_clk";
 };

 gt_crx_ref_clk: gt-crx-ref-clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <108000000>;
  clock-output-names = "gt_crx_ref_clk";
 };

 aux_ref_clk: aux-ref-clk {
  bootph-all;
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <27000000>;
  clock-output-names = "aux_ref_clk";
 };
};

&zynqmp_firmware {
 zynqmp_clk: clock-controller {
  bootph-all;
  #clock-cells = <1>;
  compatible = "xlnx,zynqmp-clk";
  clocks = <&pss_ref_clk>, <&video_clk>, <&pss_alt_ref_clk>,
    <&aux_ref_clk>, <&gt_crx_ref_clk>;
  clock-names = "pss_ref_clk", "video_clk", "pss_alt_ref_clk",
         "aux_ref_clk", "gt_crx_ref_clk";
 };
};

&can0 {
 clocks = <&zynqmp_clk 63>, <&zynqmp_clk 31>;
};

&can1 {
 clocks = <&zynqmp_clk 64>, <&zynqmp_clk 31>;
};

&psu_cortexa53_0 {
 clocks = <&zynqmp_clk 10>;
};

&psu_cortexa53_0_debug {
       clocks = <&zynqmp_clk 12>;
};

&psu_cortexa53_1_debug {
       clocks = <&zynqmp_clk 12>;
};

&psu_cortexa53_2_debug {
       clocks = <&zynqmp_clk 12>;
};

&psu_cortexa53_3_debug {
       clocks = <&zynqmp_clk 12>;
};

&fpd_dma_chan1 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan2 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan3 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan4 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan5 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan6 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan7 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&fpd_dma_chan8 {
 clocks = <&zynqmp_clk 19>, <&zynqmp_clk 31>;
};

&gpu {
 clocks = <&zynqmp_clk 24>, <&zynqmp_clk 25>;
};

&lpd_dma_chan1 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan2 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan3 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan4 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan5 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan6 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan7 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&lpd_dma_chan8 {
 clocks = <&zynqmp_clk 68>, <&zynqmp_clk 31>;
};

&nand0 {
 clocks = <&zynqmp_clk 60>, <&zynqmp_clk 31>;
};

&gem0 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 104>,
   <&zynqmp_clk 45>, <&zynqmp_clk 49>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem1 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 105>,
   <&zynqmp_clk 46>, <&zynqmp_clk 50>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem2 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 106>,
   <&zynqmp_clk 47>, <&zynqmp_clk 51>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gem3 {
 clocks = <&zynqmp_clk 31>, <&zynqmp_clk 107>,
   <&zynqmp_clk 48>, <&zynqmp_clk 52>,
   <&zynqmp_clk 44>;
 assigned-clocks = <&zynqmp_clk 44>;
};

&gpio {
 clocks = <&zynqmp_clk 31>;
};

&i2c0 {
 clocks = <&zynqmp_clk 61>;
};

&i2c1 {
 clocks = <&zynqmp_clk 62>;
};

&perf_monitor_ocm {
 clocks = <&zynqmp_clk 31>;
};

&perf_monitor_ddr {
 clocks = <&zynqmp_clk 28>;
};

&perf_monitor_cci {
 clocks = <&zynqmp_clk 28>;
};

&perf_monitor_lpd {
 clocks = <&zynqmp_clk 31>;
};

&pcie {
 clocks = <&zynqmp_clk 23>;
};

&qspi {
 clocks = <&zynqmp_clk 53>, <&zynqmp_clk 31>;
};

&sata {
 clocks = <&zynqmp_clk 22>;
};

&sdhci0 {
 clocks = <&zynqmp_clk 54>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 54>;
};

&sdhci1 {
 clocks = <&zynqmp_clk 55>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 55>;
};

&spi0 {
 clocks = <&zynqmp_clk 58>, <&zynqmp_clk 31>;
};

&spi1 {
 clocks = <&zynqmp_clk 59>, <&zynqmp_clk 31>;
};

&ttc0 {
 clocks = <&zynqmp_clk 31>;
};

&ttc1 {
 clocks = <&zynqmp_clk 31>;
};

&ttc2 {
 clocks = <&zynqmp_clk 31>;
};

&ttc3 {
 clocks = <&zynqmp_clk 31>;
};

&uart0 {
 clocks = <&zynqmp_clk 56>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 56>;
};

&uart1 {
 clocks = <&zynqmp_clk 57>, <&zynqmp_clk 31>;
 assigned-clocks = <&zynqmp_clk 57>;
};

&usb0 {
 clocks = <&zynqmp_clk 32>, <&zynqmp_clk 34>;
 assigned-clocks = <&zynqmp_clk 32>, <&zynqmp_clk 34>;
};

&dwc3_0 {
 clocks = <&zynqmp_clk 34>;
};

&usb1 {
 clocks = <&zynqmp_clk 33>, <&zynqmp_clk 34>;
 assigned-clocks = <&zynqmp_clk 33>, <&zynqmp_clk 34>;
};

&dwc3_1 {
 clocks = <&zynqmp_clk 34>;
};

&watchdog0 {
 clocks = <&zynqmp_clk 75>;
};

&lpd_watchdog {
 clocks = <&zynqmp_clk 112>;
};

&xilinx_ams {
 clocks = <&zynqmp_clk 70>;
};

&zynqmp_dpdma {
 clocks = <&zynqmp_clk 20>;
 assigned-clocks = <&zynqmp_clk 20>;
};

&zynqmp_dpsub {
 clocks = <&zynqmp_clk 28>,
   <&zynqmp_clk 17>,
   <&zynqmp_clk 16>;
 assigned-clocks = <&zynqmp_clk 18>,
     <&zynqmp_clk 17>,
     <&zynqmp_clk 16>;
};
# 5 "/tmp/tmpe9hemm83" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/pl.dtsi" 1
/ {
 amba_pl: amba_pl {
  ranges;
  compatible = "simple-bus";
  #address-cells = <2>;
  #size-cells = <2>;
  firmware-name = "48_trdPllOnddr_dacddr_adcmts.bit.bin";
  clocking0: clocking0 {
   compatible = "xlnx,fclk";
   status = "okay";
   assigned-clocks = <&zynqmp_clk 71>;
   assigned-clock-rates = <99999001>;
   #clock-cells = <0>;
   clock-output-names = "fabric_clk";
   clocks = <&zynqmp_clk 71>;
  };
  clocking_block_clk_wiz_dac3: clk_wiz@b4c30000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c30000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <93>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x258f6>;
   xlnx,clkout1-jitter = <0x40d3b40>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "BUFG";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x258f6>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <0x1365d1f>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_AUTO";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_dac3";
   xlnx,prim-in-freq = <0x1d4c0000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <1>;
   clock-names = "clk_in1" , "clk_in2" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c30000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <1>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________491.52____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "_secondary________491.52____________0.010";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1600>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <0x1f094f>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <0x319750>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__245.76000______0.000______50.0_______77.950_____64.258";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x3d47fcf>;
   xlnx,divide5-auto = <0x258f6>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x258f6>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0xea60000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <1>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <800>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x1365d1f>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <0x632ea0>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "MMCM";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "No_buffer";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <128>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0xea60000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x258f6>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x258f6>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x1f094f>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_2>, <&misc_clk_2>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0xea60000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <0x1d4c0000>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_dac3_0";
  };
  clocking_block_clk_wiz_dac2: clk_wiz@b4c20000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c20000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <93>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x258f6>;
   xlnx,clkout1-jitter = <0x40d3b40>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "BUFG";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x258f6>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <0x1365d1f>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_AUTO";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_dac2";
   xlnx,prim-in-freq = <0x1d4c0000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <1>;
   clock-names = "clk_in1" , "clk_in2" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c20000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <1>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________491.52____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "_secondary________491.52____________0.010";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1600>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <0x1f094f>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <0x319750>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__245.76000______0.000______50.0_______77.950_____64.258";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x3d47fcf>;
   xlnx,divide5-auto = <0x258f6>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x258f6>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0xea60000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <1>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <800>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x1365d1f>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <0x632ea0>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "MMCM";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "No_buffer";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <128>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0xea60000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x258f6>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x258f6>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x1f094f>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_2>, <&misc_clk_2>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0xea60000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <0x1d4c0000>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_dac2_0";
  };
  clocking_block_clk_wiz_dac1: clk_wiz@b4c10000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c10000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <93>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x258f6>;
   xlnx,clkout1-jitter = <0x40d3b40>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "BUFG";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x258f6>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <0x1365d1f>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_AUTO";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_dac1";
   xlnx,prim-in-freq = <0x1d4c0000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <1>;
   clock-names = "clk_in1" , "clk_in2" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c10000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <1>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________491.52____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "_secondary________491.52____________0.010";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1600>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <0x1f094f>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <0x319750>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__245.76000______0.000______50.0_______77.950_____64.258";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x3d47fcf>;
   xlnx,divide5-auto = <0x258f6>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x258f6>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0xea60000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <1>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <800>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x1365d1f>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <0x632ea0>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "MMCM";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "No_buffer";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <128>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0xea60000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x258f6>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x258f6>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x1f094f>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_2>, <&misc_clk_2>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0xea60000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <0x1d4c0000>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_dac1_0";
  };
  clocking_block_clk_wiz_dac0: clk_wiz@b4c00000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c00000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <93>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x258f6>;
   xlnx,clkout1-jitter = <0x40d3b40>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "BUFG";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x258f6>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <0x1365d1f>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_AUTO";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_dac0";
   xlnx,prim-in-freq = <0x1d4c0000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <1>;
   clock-names = "clk_in1" , "clk_in2" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c00000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <1>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________491.52____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "_secondary________491.52____________0.010";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1600>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <0x1f094f>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <0x319750>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__245.76000______0.000______50.0_______77.950_____64.258";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x3d47fcf>;
   xlnx,divide5-auto = <0x258f6>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x258f6>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0xea60000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <1>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <800>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x1365d1f>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <0x632ea0>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "MMCM";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "No_buffer";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <128>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0xea60000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x258f6>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x258f6>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x1f094f>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_2>, <&misc_clk_2>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0xea60000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <0x1d4c0000>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_dac0_0";
  };
  clocking_block_clk_wiz_adc3: clk_wiz@b4c70000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c70000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <13>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x3d090>;
   xlnx,clkout1-jitter = <0x4900f70>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "No_buffer";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x3d090>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <100>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_ONCHIP";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_adc3";
   xlnx,prim-in-freq = <0x107ac000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <0>;
   clock-names = "clk_in1" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c70000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <0>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________276.48____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "no_secondary_input_clock";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1500>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <10>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <16>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__368.64000______0.000______50.0_______76.550_____83.786";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x4fe7910>;
   xlnx,divide5-auto = <0x3d090>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x3d090>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0x15f90000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <3>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <750>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x227c200>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <4>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "PLL";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "Single_ended_clock_capable_pin";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <21>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0x15f90000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x3d090>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x3d090>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x3730e8>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_0>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0x15f90000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <100>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_adc3_0";
  };
  clocking_block_clk_wiz_adc2: clk_wiz@b4c60000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c60000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <13>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x3d090>;
   xlnx,clkout1-jitter = <0x4900f70>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "No_buffer";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x3d090>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <100>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_ONCHIP";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_adc2";
   xlnx,prim-in-freq = <0x107ac000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <0>;
   clock-names = "clk_in1" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c60000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <0>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________276.48____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "no_secondary_input_clock";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1500>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <10>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <16>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__368.64000______0.000______50.0_______76.550_____83.786";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x4fe7910>;
   xlnx,divide5-auto = <0x3d090>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x3d090>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0x15f90000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <3>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <750>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x227c200>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <4>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "PLL";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "Single_ended_clock_capable_pin";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <21>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0x15f90000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x3d090>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x3d090>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x3730e8>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_0>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0x15f90000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <100>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_adc2_0";
  };
  clocking_block_clk_wiz_adc1: clk_wiz@b4c50000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c50000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <13>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x3d090>;
   xlnx,clkout1-jitter = <0x4900f70>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "No_buffer";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x3d090>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <100>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_ONCHIP";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_adc1";
   xlnx,prim-in-freq = <0x107ac000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <0>;
   clock-names = "clk_in1" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c50000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <0>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________276.48____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "no_secondary_input_clock";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1500>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <10>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <16>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__368.64000______0.000______50.0_______76.550_____83.786";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x4fe7910>;
   xlnx,divide5-auto = <0x3d090>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x3d090>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0x15f90000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <3>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <750>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x227c200>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <4>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "PLL";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "Single_ended_clock_capable_pin";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <21>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0x15f90000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x3d090>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x3d090>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x3730e8>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_0>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0x15f90000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <100>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_adc1_0";
  };
  clocking_block_clk_wiz_adc0: clk_wiz@b4c40000 {
   xlnx,reset-type = "ACTIVE_HIGH";
   xlnx,pll-clkout1-divide = <1>;
   xlnx,clk-out1-port = "clk_out1";
   xlnx,clkout2-phase = <0>;
   xlnx,clkout3-jitter = <0>;
   xlnx,clkout3-drives = "BUFG";
   reg = <0x0 0xb4c40000 0x0 0x10000>;
   xlnx,use-min-o-jitter = <1>;
   xlnx,clkout4-phase-error = <0>;
   xlnx,clkout5-1 = <0000>;
   xlnx,clkout5-2 = <0000>;
   xlnx,clkout5-out-freq = <100>;
   xlnx,d-max = <93>;
   xlnx,clkout1-phase = <0>;
   xlnx,divide6-auto = <0x3971e>;
   xlnx,clkout1-jitter = <0x451aac8>;
   xlnx,clkfb-in-n-port = "clkfb_in_n";
   xlnx,clkout2-requested-out-freq = <100>;
   xlnx,use-locked = <1>;
   xlnx,pll-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout3-use-fine-ps;
   xlnx,clkout1-drives = "No_buffer";
   xlnx,input-clk-stopped-port = "input_clk_stopped";
   xlnx,clkout4-duty-cycle = <50>;
   xlnx,divide3-auto = <0x3971e>;
   xlnx,use-dyn-reconfig = <1>;
   xlnx,clkout3-actual-freq = <100>;
   xlnx,clkout6-requested-duty-cycle = <50>;
   xlnx,diff-clk-in1-board-interface = "Custom";
   xlnx,mmcm-clkout0-duty-cycle = <0x7a120>;
   xlnx,clkin2-jitter-ps = <0x227c200>;
   xlnx,clkout2-1 = <0000>;
   xlnx,in-freq-units = "Units_MHz";
   xlnx,clkout2-2 = <0000>;
   xlnx,feedback-source = "FDBK_ONCHIP";
   xlnx,clkout5-requested-out-freq = <100>;
   xlnx,name = "clocking_block_clk_wiz_adc0";
   xlnx,prim-in-freq = <0x107ac000>;
   xlnx,mmcm-clkout5-divide = <1>;
   xlnx,clkout3-phase-error = <0>;
   xlnx,clk-in2-board-interface = "Custom";
   xlnx,clkin1-ui-jitter = <0x2710>;
   xlnx,use-inclk-switchover = <1>;
   clock-names = "clk_in1" , "clk_in2" , "clkfb_in" , "s_axi_aclk";
   xlnx,clkout5-duty-cycle = <50>;
   xlnx,use-clkout4-bar = <0>;
   xlnx,mmcm-clkout1-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout2-use-fine-ps;
   xlnx,clkout2-out-freq = <100>;
   xlnx,use-dyn-phase-shift = <0>;
   xlnx,mmcm-clkout3-divide = <1>;
   xlnx,clkout2-actual-freq = <100>;
   xlnx,o-min = <1>;
   xlnx,daddr-port = "daddr";
   xlnx,precision = <1>;
   xlnx,mmcm-ref-jitter1 = <0x2710>;
   clock-output-names = "0xb4c40000-clk_out1";
   xlnx,mmcm-ref-jitter2 = <0x2710>;
   xlnx,pll-notes = "No , notes";
   xlnx,use-phase-alignment = <1>;
   xlnx,ref-clk-freq = <100>;
   xlnx,clkout7-requested-duty-cycle = <50>;
   xlnx,inclk-sum-row0 = "Input , Clock , Freq , (MHz) , Input , Jitter , (UI)";
   xlnx,inclk-sum-row1 = "__primary__________276.48____________0.010";
   xlnx,use-fast-simulation = <0>;
   xlnx,inclk-sum-row2 = "_secondary________276.48____________0.010";
   xlnx,mmcm-clkout1-divide = <1>;
   xlnx,din-port = "din";
   xlnx,reset-board-interface = "Custom";
   xlnx,clkout6-duty-cycle = <50>;
   xlnx,clkout2-phase-error = <0>;
   xlnx,clkout1-requested-duty-cycle = <50>;
   xlnx,vco-max = <1600>;
   xlnx,use-freq-synth = <1>;
   xlnx,primtype-sel = "AUTO";
   xlnx,mmcm-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout5-used = <0>;
   xlnx,d-min = <1>;
   xlnx,pll-clkfbout-mult = <1>;
   xlnx,mmcm-clkout4-cascade;
   xlnx,use-clkout1-bar = <0>;
   xlnx,clk-out6-port = "clk_out6";
   xlnx,clkout2-sequence-number = <1>;
   xlnx,clk-valid-port = "CLK_VALID";
   xlnx,clkout2-used = <0>;
   xlnx,clkout4-sequence-number = <1>;
   xlnx,psincdec-port = "psincdec";
   xlnx,mmcm-clkout1-use-fine-ps;
   xlnx,clk-out3-port = "clk_out3";
   xlnx,clkout6-sequence-number = <1>;
   xlnx,platform = "UNKNOWN";
   xlnx,mmcm-clkout6-phase = <0>;
   xlnx,clkout1-actual-freq = <100>;
   xlnx,clkout6-out-freq = <100>;
   xlnx,nr-outputs = <1>;
   xlnx,mmcm-clkin2-period = <0x3730e8>;
   xlnx,prim-in-jitter = <0x2710>;
   xlnx,mmcm-clkfbout-mult-f = <17>;
   status = "okay";
   xlnx,clkout6-1 = <0000>;
   xlnx,clkout6-2 = <0000>;
   xlnx,clkout7-duty-cycle = <50>;
   xlnx,outclk-sum-row1 = "clk_out1__368.64000______0.000______50.0_______72.461_____88.322";
   xlnx,outclk-sum-row2 = "no_CLK_OUT2_output";
   xlnx,jitter-sel = "Min_O_Jitter";
   xlnx,outclk-sum-row3 = "no_CLK_OUT3_output";
   xlnx,mmcm-clkout5-phase = <0>;
   xlnx,mmcm-clkout3-duty-cycle = <0x7a120>;
   xlnx,outclk-sum-row4 = "no_CLK_OUT4_output";
   xlnx,clkfb-in-p-port = "clkfb_in_p";
   xlnx,outclk-sum-row5 = "no_CLK_OUT5_output";
   xlnx,outclk-sum-row6 = "no_CLK_OUT6_output";
   xlnx,outclk-sum-row7 = "no_CLK_OUT7_output";
   xlnx,clkout1-phase-error = <0x543afd0>;
   xlnx,divide5-auto = <0x3971e>;
   xlnx,pll-bandwidth = "OPTIMIZED";
   xlnx,psdone-port = "psdone";
   xlnx,clkout3-1 = <0000>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,clkout3-2 = <0000>;
   xlnx,clkout3-requested-out-freq = <100>;
   xlnx,pll-clkout4-divide = <1>;
   xlnx,pll-clkfbout-phase = <0>;
   xlnx,divide2-auto = <0x3971e>;
   xlnx,override-mmcm = <0>;
   xlnx,clkout6-jitter = <0>;
   xlnx,ss-mode = "CENTER_HIGH";
   xlnx,mmcm-notes = "None";
   xlnx,clkout6-drives = "BUFG";
   xlnx,mmcm-clkfbout-use-fine-ps;
   xlnx,mmcm-clkout0-use-fine-ps;
   xlnx,ss-mod-period = <4000>;
   xlnx,mmcm-clkout4-phase = <0>;
   xlnx,clkout2-requested-duty-cycle = <50>;
   xlnx,clkout0-actual-freq = <0x15f90000>;
   xlnx,divclk = <0000>;
   xlnx,primary-port = "clk_in1";
   xlnx,mmcm-compensation = "AUTO";
   xlnx,clkout6-requested-out-freq = <100>;
   xlnx,clkout0-1 = <0000>;
   xlnx,clkout0-2 = <0000>;
   xlnx,clkout2-requested-phase = <0>;
   xlnx,relative-inclk = "REL_PRIMARY";
   xlnx,pll-clkout2-divide = <1>;
   xlnx,clkout4-requested-phase = <0>;
   xlnx,enable-user-clock0 = <0>;
   xlnx,filter-1 = <0000>;
   xlnx,mmcm-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-out-freq = <100>;
   xlnx,clkout4-jitter = <0>;
   xlnx,clkout6-requested-phase = <0>;
   xlnx,clkoutphy-requested-freq = <600>;
   xlnx,enable-user-clock1 = <0>;
   xlnx,filter-2 = <0000>;
   xlnx,ss-mod-freq = <250>;
   xlnx,in-jitter-units = "Units_UI";
   xlnx,mmcm-divclk-divide = <3>;
   xlnx,enable-user-clock2 = <0>;
   xlnx,enable-user-clock3 = <0>;
   xlnx,lock-1 = <0000>;
   xlnx,clkout4-drives = "BUFG";
   xlnx,lock-2 = <0000>;
   xlnx,den-port = "den";
   xlnx,lock-3 = <0000>;
   xlnx,use-safe-clock-startup = <0>;
   xlnx,mmcm-clkout3-phase = <0>;
   xlnx,dwe-port = "dwe";
   xlnx,clkfb-out-n-port = "clkfb_out_n";
   xlnx,use-max-i-jitter = <0>;
   xlnx,drdy-port = "drdy";
   xlnx,vco-min = <800>;
   xlnx,pll-clkout0-divide = <1>;
   xlnx,clkin1-jitter-ps = <0x227c200>;
   xlnx,clk-in-sel-port = "clk_in_sel";
   xlnx,use-freeze = <0>;
   xlnx,clkout2-jitter = <0>;
   xlnx,enable-pll0 = <0>;
   xlnx,enable-pll1 = <0>;
   xlnx,clkout2-drives = "BUFG";
   xlnx,use-inclk-stopped = <0>;
   xlnx,use-clkout3-bar = <0>;
   xlnx,use-clk-valid = <0>;
   xlnx,mmcm-clkout2-phase = <0>;
   compatible = "xlnx,clk-wiz-6.0" , "xlnx,versal-clk-wizard";
   xlnx,reset-port = "reset";
   xlnx,mmcm-clkout5-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout0-divide-f = <0x40d990>;
   xlnx,pll-clkout0-duty-cycle = <0x7a120>;
   xlnx,speed-grade = <2>;
   xlnx,diff-clk-in2-board-interface = "Custom";
   xlnx,clkout3-requested-duty-cycle = <50>;
   xlnx,use-status = <0>;
   xlnx,prim-source = "No_buffer";
   xlnx,clkout7-used = <0>;
   xlnx,use-clkfb-stopped = <0>;
   xlnx,mmcm-clkout1-phase = <0>;
   xlnx,mmcm-clkout6-divide = <1>;
   xlnx,clkout7-out-freq = <100>;
   xlnx,prim-in-timeperiod = <10>;
   xlnx,clkout4-used = <0>;
   xlnx,pll-clkin-period = <1>;
   xlnx,clk-out5-port = "clk_out5";
   xlnx,psclk-port = "psclk";
   xlnx,primitive = "MMCM";
   xlnx,clkout1-used;
   xlnx,reset-low = <0>;
   xlnx,clk-in1-board-interface = "Custom";
   xlnx,clk-out2-port = "clk_out2";
   xlnx,power-down-port = "power_down";
   xlnx,clkout7-phase-error = <0>;
   xlnx,mmcm-clkout6-duty-cycle = <0x7a120>;
   xlnx,mmcm-clkout4-divide = <1>;
   xlnx,mmcm-clkfbout-phase = <0>;
   xlnx,mmcm-clkout0-phase = <0>;
   xlnx,pll-clkout1-duty-cycle = <0x7a120>;
   xlnx,user-clk-freq0 = <100>;
   xlnx,user-clk-freq1 = <100>;
   xlnx,pll-clkout5-phase = <0>;
   xlnx,user-clk-freq2 = <100>;
   xlnx,secondary-in-jitter = <0x2710>;
   xlnx,user-clk-freq3 = <100>;
   xlnx,use-clock-sequencing = <0>;
   xlnx,secondary-source = "No_buffer";
   xlnx,cddcdone-port = "cddcdone";
   xlnx,clkout7-phase = <0>;
   xlnx,psen-port = "psen";
   xlnx,mmcm-clkout6-use-fine-ps;
   xlnx,dclk-port = "dclk";
   xlnx,m-max = <128>;
   xlnx,outclk-sum-row0a = "Output , Output , Phase , Duty , Cycle , Pk-to-Pk , Phase";
   xlnx,clkout1-requested-out-freq = <0x15f90000>;
   xlnx,clkout6-actual-freq = <100>;
   xlnx,divide7-auto = <0x3971e>;
   xlnx,outclk-sum-row0b = "Clock , Freq , (MHz) , (degrees) , (%) , Jitter , (ps) , Error , (ps)";
   xlnx,clkout4-1 = <0000>;
   xlnx,locked-port = "locked";
   xlnx,clkin2-ui-jitter = <0x2710>;
   xlnx,clkout4-2 = <0000>;
   xlnx,enable-clock-monitor = <0>;
   xlnx,mmcm-clkout2-divide = <1>;
   xlnx,ss-mod-time = <0xfa0>;
   xlnx,auto-primitive = "MMCM";
   xlnx,divide4-auto = <0x3971e>;
   xlnx,pll-clkout4-phase = <0>;
   xlnx,use-power-down = <0>;
   xlnx,mmcm-startup-wait;
   xlnx,divide1-auto = <1>;
   xlnx,clkout4-requested-duty-cycle = <50>;
   xlnx,clkout4-requested-out-freq = <100>;
   xlnx,optimize-clocking-structure-en = <0>;
   xlnx,clkout4-out-freq = <100>;
   xlnx,clkout6-phase = <0>;
   xlnx,num-out-clks = <1>;
   xlnx,ip-name = "clk_wiz";
   xlnx,pll-clkout2-duty-cycle = <0x7a120>;
   xlnx,clkout1-1 = <0000>;
   xlnx,clkout1-2 = <0000>;
   xlnx,clkout1-duty-cycle = <50>;
   xlnx,pll-divclk-divide = <1>;
   xlnx,clkout6-phase-error = <0>;
   xlnx,dout-port = "dout";
   xlnx,clkout1-sequence-number = <1>;
   xlnx,pll-clkout3-phase = <0>;
   xlnx,cddcreq-port = "cddcreq";
   xlnx,clkout7-requested-out-freq = <100>;
   xlnx,use-spread-spectrum = <0>;
   xlnx,clkout3-sequence-number = <1>;
   xlnx,clkout5-sequence-number = <1>;
   xlnx,summary-strings = "empty";
   xlnx,pll-compensation = "SYSTEM_SYNCHRONOUS";
   xlnx,clkout5-phase = <0>;
   xlnx,clkout7-sequence-number = <1>;
   xlnx,status-port = "STATUS";
   xlnx,clkfb-out-p-port = "clkfb_out_p";
   xlnx,mmcm-clkout5-use-fine-ps;
   xlnx,clkfb-in-port = "clkfb_in";
   xlnx,clkout5-actual-freq = <100>;
   xlnx,input-mode = "frequency";
   xlnx,interface-selection = <1>;
   xlnx,mmcm-bandwidth = "HIGH";
   xlnx,calc-done = "empty";
   xlnx,pll-clkout2-phase = <0>;
   xlnx,has-cddc = <0>;
   xlnx,power-reg = <0000>;
   xlnx,mmcm-clkin1-period = <0x3730e8>;
   xlnx,pll-clkout3-duty-cycle = <0x7a120>;
   xlnx,clkout2-duty-cycle = <50>;
   xlnx,clkout4-phase = <0>;
   xlnx,pll-clkout5-divide = <1>;
   xlnx,clkout7-jitter = <0>;
   clocks = <&misc_clk_0>, <&misc_clk_0>, <&misc_clk_1>, <&zynqmp_clk 71>;
   xlnx,clkout1-out-freq = <0x15f90000>;
   xlnx,clkout7-drives = "BUFG";
   xlnx,clkout5-phase-error = <0>;
   xlnx,pll-clkout1-phase = <0>;
   xlnx,clkout5-requested-duty-cycle = <50>;
   xlnx,clkfb-in-signaling = "SINGLE";
   xlnx,enable-clkoutphy = <0>;
   xlnx,use-clkout2-bar = <0>;
   xlnx,secondary-port = "clk_in2";
   xlnx,clkout3-phase = <0>;
   xlnx,pll-clkout3-divide = <1>;
   xlnx,use-reset = <1>;
   xlnx,override-pll = <0>;
   xlnx,clkoutphy-mode = "VCO";
   xlnx,mmcm-clkout4-use-fine-ps;
   xlnx,clkout5-jitter = <0>;
   xlnx,clkout6-used = <0>;
   xlnx,m-min = <2>;
   xlnx,mmcm-clock-hold;
   xlnx,clkfb-stopped-port = "clkfb_stopped";
   xlnx,clk-out7-port = "clk_out7";
   xlnx,clkout1-requested-phase = <0>;
   xlnx,clkout4-actual-freq = <100>;
   xlnx,pll-clk-feedback = "CLKFBOUT";
   xlnx,phaseshift-mode = "LATENCY";
   xlnx,clkfb-out-port = "clkfb_out";
   xlnx,clkout5-drives = "BUFG";
   xlnx,o-max = <128>;
   xlnx,clkout3-requested-phase = <0>;
   xlnx,jitter-options = "UI";
   xlnx,secondary-in-timeperiod = <10>;
   xlnx,pll-clkout4-duty-cycle = <0x7a120>;
   xlnx,clkout3-used = <0>;
   xlnx,clkout5-requested-phase = <0>;
   xlnx,pll-clkout0-phase = <0>;
   xlnx,clk-out4-port = "clk_out4";
   xlnx,clkout3-duty-cycle = <50>;
   xlnx,clkout7-requested-phase = <0>;
   xlnx,secondary-in-freq = <0x107ac000>;
   xlnx,use-min-power = <0>;
   xlnx,clkfbout-1 = <0000>;
   #clock-cells = <1>;
   xlnx,pll-ref-jitter = <0x2710>;
   xlnx,clkfbout-2 = <0000>;
   xlnx,component-name = "rfdc_ex_clk_wiz_adc0_0";
  };
  afi0: afi0 {
   status = "okay";
   compatible = "xlnx,afi-fpga";
   resets = <&zynqmp_reset 116>, <&zynqmp_reset 117>, <&zynqmp_reset 118>, <&zynqmp_reset 119>;
   config-afi = < 0 2>, <1 2>, <2 2>, <3 2>, <4 0>, <5 0>, <6 0>, <7 0>, <8 0>, <9 0>, <10 0>, <11 0>, <12 0>, <13 0>, <14 0xa00>, <15 0x000>;
  };
  misc_clk_1: misc_clk_1 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <1>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  misc_clk_3: misc_clk_3 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <3>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  misc_clk_2: misc_clk_2 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <5>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  misc_clk_0: misc_clk_0 {
   clock-div = <1>;
   compatible = "fixed-factor-clock";
   clock-mult = <3>;
   clocks = <&zynqmp_clk 71>;
   #clock-cells = <0>;
  };
  ADC_DDR_DMA_axi_dma_0: dma@a0203000 {
   interrupts = < 0 91 4 >;
   compatible = "xlnx,axi-dma-7.1" , "xlnx,axi-dma-1.00.a";
   xlnx,s2mm-data-width = <0x200>;
   xlnx,mm2s-burst-size = <16>;
   xlnx,m-axi-mm2s-data-width = <32>;
   xlnx,num-s2mm-channels = <1>;
   xlnx,dlytmr-resolution = <125>;
   interrupt-parent = <&imux>;
   xlnx,sg-length-width = <26>;
   xlnx,prmry-is-aclk-async = <1>;
   xlnx,include-s2mm-sf = <1>;
   #dma-cells = <1>;
   xlnx,ip-name = "axi_dma";
   xlnx,single-interface = <0>;
   xlnx,sg-include-stscntrl-strm = <0>;
   xlnx,include-s2mm-dre = <0>;
   reg = <0x0 0xa0203000 0x0 0x1000>;
   xlnx,addr-width = <64>;
   xlnx,include-s2mm = <1>;
   clocks = <&misc_clk_3>, <&zynqmp_clk 71>, <&zynqmp_clk 71>;
   xlnx,s-axis-s2mm-tdata-width = <512>;
   xlnx,micro-dma = <0>;
   xlnx,increase-throughput = <0>;
   xlnx,mm2s-data-width = <0x20>;
   xlnx,addrwidth = <0x40>;
   xlnx,include-sg;
   xlnx,sg-use-stsapp-length = <0>;
   xlnx,m-axis-mm2s-tdata-width = <32>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,s2mm-burst-size = <64>;
   xlnx,m-axi-s2mm-data-width = <512>;
   xlnx,num-mm2s-channels = <1>;
   xlnx,enable-multi-channel = <0>;
   status = "okay";
   xlnx,include-mm2s-sf = <1>;
   clock-names = "m_axi_s2mm_aclk" , "m_axi_sg_aclk" , "s_axi_lite_aclk";
   interrupt-names = "s2mm_introut";
   xlnx,include-mm2s = <0>;
   xlnx,include-mm2s-dre = <0>;
   xlnx,name = "ADC_DDR_DMA_axi_dma_0";
   dma_channel_a0203030: dma-channel@a0203030 {
    interrupts = <0 91 4>;
    xlnx,datawidth = <0x200>;
    xlnx,device-id = <0x0>;
    compatible = "xlnx,axi-dma-s2mm-channel";
    dma-channels = <0x1>;
   };
  };
  ADC_DDR_DMA_axis_inter_adc_xbar: axis_switch@a0204000 {
   xlnx,m14-s13-connectivity = <1>;
   xlnx,m13-s06-connectivity = <1>;
   xlnx,m04-s15-connectivity = <1>;
   xlnx,m12-s00-connectivity = <1>;
   xlnx,m03-s08-connectivity = <1>;
   xlnx,m02-s02-connectivity = <1>;
   xlnx,m12-s12-connectivity = <1>;
   xlnx,m11-s05-connectivity = <1>;
   reg = <0x0 0xa0204000 0x0 0x1000>;
   xlnx,m02-s14-connectivity = <1>;
   xlnx,s-axi-ctrl-addr-width = <7>;
   xlnx,m01-s07-connectivity = <1>;
   xlnx,m00-s01-connectivity = <1>;
   xlnx,m10-s11-connectivity = <1>;
   xlnx,m09-s11-connectivity = <1>;
   xlnx,m00-s13-connectivity = <1>;
   xlnx,m08-s04-connectivity = <1>;
   xlnx,tdata-num-bytes = <64>;
   xlnx,m07-s09-connectivity = <1>;
   xlnx,m07-s10-connectivity = <1>;
   xlnx,m06-s03-connectivity = <1>;
   xlnx,m15-s06-connectivity = <1>;
   xlnx,m06-s15-connectivity = <1>;
   xlnx,m14-s00-connectivity = <1>;
   xlnx,m05-s08-connectivity = <1>;
   xlnx,m04-s02-connectivity = <1>;
   xlnx,m14-s12-connectivity = <1>;
   xlnx,m13-s05-connectivity = <1>;
   xlnx,m04-s14-connectivity = <1>;
   xlnx,m03-s07-connectivity = <1>;
   xlnx,m02-s01-connectivity = <1>;
   xlnx,log-si-slots = <3>;
   xlnx,m12-s11-connectivity = <1>;
   xlnx,m11-s04-connectivity = <1>;
   xlnx,m02-s13-connectivity = <1>;
   xlnx,m01-s06-connectivity = <1>;
   xlnx,num-si = <8>;
   xlnx,m00-s00-connectivity = <1>;
   xlnx,name = "ADC_DDR_DMA_axis_inter_adc_xbar";
   xlnx,m10-s10-connectivity = <1>;
   xlnx,m10-s09-connectivity = <1>;
   xlnx,m09-s09-connectivity = <1>;
   xlnx,m09-s10-connectivity = <1>;
   xlnx,m00-s12-connectivity = <1>;
   xlnx,m08-s03-connectivity = <1>;
   xlnx,m08-s15-connectivity = <1>;
   xlnx,has-tstrb = <0>;
   xlnx,m07-s08-connectivity = <1>;
   xlnx,m06-s02-connectivity = <1>;
   xlnx,has-tready = <1>;
   xlnx,m15-s05-connectivity = <1>;
   xlnx,arb-on-num-cycles = <0>;
   xlnx,m06-s14-connectivity = <1>;
   xlnx,m05-s07-connectivity = <1>;
   xlnx,m04-s01-connectivity = <1>;
   clock-names = "aclk" , "s_axi_ctrl_aclk";
   xlnx,m14-s11-connectivity = <1>;
   xlnx,m13-s04-connectivity = <1>;
   xlnx,m04-s13-connectivity = <1>;
   xlnx,routing-mode = <1>;
   xlnx,m03-s06-connectivity = <1>;
   xlnx,m02-s00-connectivity = <1>;
   xlnx,m12-s10-connectivity = <1>;
   xlnx,m12-s09-connectivity = <1>;
   xlnx,m11-s03-connectivity = <1>;
   xlnx,m02-s12-connectivity = <1>;
   xlnx,m01-s05-connectivity = <1>;
   xlnx,axis-tid-width = <1>;
   xlnx,m11-s15-connectivity = <1>;
   xlnx,m10-s08-connectivity = <1>;
   xlnx,has-tkeep = <1>;
   xlnx,m09-s08-connectivity = <1>;
   xlnx,m00-s11-connectivity = <1>;
   xlnx,m08-s02-connectivity = <1>;
   xlnx,m08-s14-connectivity = <1>;
   xlnx,m07-s07-connectivity = <1>;
   xlnx,m06-s01-connectivity = <1>;
   xlnx,m15-s04-connectivity = <1>;
   xlnx,m06-s13-connectivity = <1>;
   xlnx,m05-s06-connectivity = <1>;
   xlnx,m04-s00-connectivity = <1>;
   xlnx,m14-s10-connectivity = <1>;
   xlnx,m14-s09-connectivity = <1>;
   xlnx,has-aclken = <0>;
   xlnx,tuser-width = <0>;
   xlnx,m13-s03-connectivity = <1>;
   xlnx,m04-s12-connectivity = <1>;
   xlnx,arb-algorithm = <0>;
   xlnx,m03-s05-connectivity = <1>;
   xlnx,m13-s15-connectivity = <1>;
   xlnx,m12-s08-connectivity = <1>;
   xlnx,arb-on-tlast = <0>;
   xlnx,m11-s02-connectivity = <1>;
   xlnx,m02-s11-connectivity = <1>;
   xlnx,tid-width = <0>;
   xlnx,m01-s04-connectivity = <1>;
   xlnx,m11-s14-connectivity = <1>;
   xlnx,m10-s07-connectivity = <1>;
   xlnx,has-tlast = <0>;
   xlnx,m09-s07-connectivity = <1>;
   xlnx,m00-s10-connectivity = <1>;
   xlnx,m00-s09-connectivity = <1>;
   xlnx,common-clock = <0>;
   xlnx,axis-tuser-width = <1>;
   xlnx,m08-s01-connectivity = <1>;
   xlnx,m08-s13-connectivity = <1>;
   xlnx,m07-s06-connectivity = <1>;
   xlnx,m06-s00-connectivity = <1>;
   xlnx,m15-s03-connectivity = <1>;
   xlnx,m06-s12-connectivity = <1>;
   xlnx,m05-s05-connectivity = <1>;
   xlnx,m15-s15-connectivity = <1>;
   xlnx,m14-s08-connectivity = <1>;
   status = "okay";
   xlnx,m13-s02-connectivity = <1>;
   xlnx,m04-s11-connectivity = <1>;
   xlnx,m03-s04-connectivity = <1>;
   xlnx,tdest-width = <0>;
   xlnx,m13-s14-connectivity = <1>;
   xlnx,m12-s07-connectivity = <1>;
   xlnx,m11-s01-connectivity = <1>;
   xlnx,m02-s09-connectivity = <1>;
   xlnx,m02-s10-connectivity = <1>;
   xlnx,m01-s03-connectivity = <1>;
   xlnx,m11-s13-connectivity = <1>;
   xlnx,arb-on-max-xfers = <1>;
   xlnx,m10-s06-connectivity = <1>;
   xlnx,m01-s15-connectivity = <1>;
   xlnx,m09-s06-connectivity = <1>;
   xlnx,m00-s08-connectivity = <1>;
   xlnx,m08-s00-connectivity = <1>;
   xlnx,include-arbiter = <1>;
   xlnx,num-si-slots = <8>;
   xlnx,axis-tdest-width = <1>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,m08-s12-connectivity = <1>;
   xlnx,m07-s05-connectivity = <1>;
   xlnx,m15-s02-connectivity = <1>;
   xlnx,m06-s11-connectivity = <1>;
   xlnx,m05-s04-connectivity = <1>;
   xlnx,m15-s14-connectivity = <1>;
   xlnx,m14-s07-connectivity = <1>;
   xlnx,m13-s01-connectivity = <1>;
   xlnx,m04-s09-connectivity = <1>;
   xlnx,m04-s10-connectivity = <1>;
   xlnx,m03-s03-connectivity = <1>;
   xlnx,m13-s13-connectivity = <1>;
   xlnx,m12-s06-connectivity = <1>;
   xlnx,m03-s15-connectivity = <1>;
   xlnx,m11-s00-connectivity = <1>;
   xlnx,m02-s08-connectivity = <1>;
   xlnx,m01-s02-connectivity = <1>;
   xlnx,m11-s12-connectivity = <1>;
   xlnx,m10-s05-connectivity = <1>;
   xlnx,m01-s14-connectivity = <1>;
   xlnx,m09-s05-connectivity = <1>;
   xlnx,m00-s07-connectivity = <1>;
   xlnx,m08-s11-connectivity = <1>;
   xlnx,m07-s04-connectivity = <1>;
   xlnx,m15-s01-connectivity = <1>;
   xlnx,m06-s09-connectivity = <1>;
   xlnx,m06-s10-connectivity = <1>;
   xlnx,m05-s03-connectivity = <1>;
   xlnx,m15-s13-connectivity = <1>;
   xlnx,m14-s06-connectivity = <1>;
   xlnx,m05-s15-connectivity = <1>;
   xlnx,m13-s00-connectivity = <1>;
   xlnx,m04-s08-connectivity = <1>;
   xlnx,m03-s02-connectivity = <1>;
   xlnx,m13-s12-connectivity = <1>;
   xlnx,m12-s05-connectivity = <1>;
   xlnx,m03-s14-connectivity = <1>;
   compatible = "xlnx,axis-switch-1.1";
   xlnx,m02-s07-connectivity = <1>;
   xlnx,m01-s01-connectivity = <1>;
   xlnx,output-reg = <0>;
   xlnx,m11-s11-connectivity = <1>;
   xlnx,num-mi-slots = <1>;
   xlnx,m10-s04-connectivity = <1>;
   xlnx,m01-s13-connectivity = <1>;
   xlnx,m09-s04-connectivity = <1>;
   xlnx,m00-s06-connectivity = <1>;
   xlnx,m08-s09-connectivity = <1>;
   xlnx,m08-s10-connectivity = <1>;
   xlnx,m07-s03-connectivity = <1>;
   xlnx,m07-s15-connectivity = <1>;
   xlnx,m15-s00-connectivity = <1>;
   xlnx,m06-s08-connectivity = <1>;
   xlnx,m05-s02-connectivity = <1>;
   xlnx,m15-s12-connectivity = <1>;
   xlnx,m14-s05-connectivity = <1>;
   xlnx,m05-s14-connectivity = <1>;
   xlnx,m04-s07-connectivity = <1>;
   xlnx,m03-s01-connectivity = <1>;
   xlnx,m13-s11-connectivity = <1>;
   xlnx,m12-s04-connectivity = <1>;
   xlnx,m03-s13-connectivity = <1>;
   xlnx,m02-s06-connectivity = <1>;
   xlnx,m01-s00-connectivity = <1>;
   xlnx,m11-s10-connectivity = <1>;
   xlnx,m11-s09-connectivity = <1>;
   xlnx,m10-s03-connectivity = <1>;
   xlnx,m01-s12-connectivity = <1>;
   xlnx,m09-s03-connectivity = <1>;
   xlnx,m00-s05-connectivity = <1>;
   xlnx,m10-s15-connectivity = <1>;
   xlnx,s-axi-ctrl-data-width = <32>;
   xlnx,m09-s15-connectivity = <1>;
   xlnx,m08-s08-connectivity = <1>;
   xlnx,m07-s02-connectivity = <1>;
   xlnx,m07-s14-connectivity = <1>;
   xlnx,m06-s07-connectivity = <1>;
   xlnx,m05-s01-connectivity = <1>;
   xlnx,m15-s11-connectivity = <1>;
   xlnx,m14-s04-connectivity = <1>;
   xlnx,m05-s13-connectivity = <1>;
   xlnx,m04-s06-connectivity = <1>;
   xlnx,m03-s00-connectivity = <1>;
   xlnx,m13-s10-connectivity = <1>;
   xlnx,m13-s09-connectivity = <1>;
   xlnx,m12-s03-connectivity = <1>;
   xlnx,m03-s12-connectivity = <1>;
   xlnx,m02-s05-connectivity = <1>;
   xlnx,m12-s15-connectivity = <1>;
   xlnx,m11-s08-connectivity = <1>;
   xlnx,m01-s11-connectivity = <1>;
   xlnx,m09-s02-connectivity = <1>;
   xlnx,m10-s02-connectivity = <1>;
   xlnx,m00-s04-connectivity = <1>;
   xlnx,m10-s14-connectivity = <1>;
   xlnx,ip-name = "axis_switch";
   xlnx,m09-s14-connectivity = <1>;
   xlnx,m08-s07-connectivity = <1>;
   xlnx,m07-s01-connectivity = <1>;
   xlnx,m07-s13-connectivity = <1>;
   xlnx,m06-s06-connectivity = <1>;
   xlnx,m05-s00-connectivity = <1>;
   xlnx,m15-s10-connectivity = <1>;
   xlnx,m15-s09-connectivity = <1>;
   xlnx,m14-s03-connectivity = <1>;
   xlnx,m05-s12-connectivity = <1>;
   xlnx,m04-s05-connectivity = <1>;
   xlnx,m14-s15-connectivity = <1>;
   xlnx,m13-s08-connectivity = <1>;
   xlnx,m12-s02-connectivity = <1>;
   xlnx,m03-s11-connectivity = <1>;
   xlnx,m02-s04-connectivity = <1>;
   xlnx,m12-s14-connectivity = <1>;
   xlnx,m11-s07-connectivity = <1>;
   xlnx,m01-s09-connectivity = <1>;
   xlnx,m01-s10-connectivity = <1>;
   xlnx,m09-s01-connectivity = <1>;
   xlnx,m10-s01-connectivity = <1>;
   xlnx,m00-s03-connectivity = <1>;
   xlnx,m10-s13-connectivity = <1>;
   xlnx,m09-s13-connectivity = <1>;
   xlnx,m00-s15-connectivity = <1>;
   xlnx,m08-s06-connectivity = <1>;
   xlnx,m07-s00-connectivity = <1>;
   xlnx,m07-s12-connectivity = <1>;
   xlnx,m06-s05-connectivity = <1>;
   xlnx,m15-s08-connectivity = <1>;
   xlnx,m14-s02-connectivity = <1>;
   xlnx,m05-s11-connectivity = <1>;
   clocks = <&misc_clk_3>, <&zynqmp_clk 71>;
   xlnx,m04-s04-connectivity = <1>;
   xlnx,num-mi = <1>;
   xlnx,m14-s14-connectivity = <1>;
   xlnx,m13-s07-connectivity = <1>;
   xlnx,m12-s01-connectivity = <1>;
   xlnx,m03-s09-connectivity = <1>;
   xlnx,m03-s10-connectivity = <1>;
   xlnx,m02-s03-connectivity = <1>;
   xlnx,m12-s13-connectivity = <1>;
   xlnx,m11-s06-connectivity = <1>;
   xlnx,m02-s15-connectivity = <1>;
   xlnx,m01-s08-connectivity = <1>;
   xlnx,m09-s00-connectivity = <1>;
   xlnx,m10-s00-connectivity = <1>;
   xlnx,m00-s02-connectivity = <1>;
   xlnx,m10-s12-connectivity = <1>;
   xlnx,m09-s12-connectivity = <1>;
   xlnx,m00-s14-connectivity = <1>;
   xlnx,m08-s05-connectivity = <1>;
   xlnx,m07-s11-connectivity = <1>;
   xlnx,m06-s04-connectivity = <1>;
   xlnx,axis-tdata-width = <512>;
   xlnx,m15-s07-connectivity = <1>;
   xlnx,m14-s01-connectivity = <1>;
   xlnx,m05-s09-connectivity = <1>;
   xlnx,m05-s10-connectivity = <1>;
   xlnx,m04-s03-connectivity = <1>;
   xlnx,decoder-reg = <0>;
  };
  ADC_DDR_DMA_tlast_gen_v1_0_0: tlast_gen_v1_0@a0310000 {
   xlnx,s00-axi-data-width = <32>;
   compatible = "xlnx,tlast-gen-v1-0-1.0";
   status = "okay";
   clock-names = "aclk" , "s00_axi_aclk";
   xlnx,s00-axi-addr-width = <4>;
   xlnx,ip-name = "tlast_gen_v1_0";
   xlnx,edk-iptype = "PERIPHERAL";
   reg = <0x0 0xa0310000 0x0 0x1000>;
   clocks = <&misc_clk_3>, <&zynqmp_clk 71>;
   xlnx,name = "ADC_DDR_DMA_tlast_gen_v1_0_0";
  };
  DAC_DDR_DMA_axi_dma_0: dma@a0000000 {
   interrupts = < 0 90 4 >;
   compatible = "xlnx,axi-dma-7.1" , "xlnx,axi-dma-1.00.a";
   xlnx,s2mm-data-width = <0x20>;
   xlnx,mm2s-burst-size = <64>;
   xlnx,m-axi-mm2s-data-width = <256>;
   xlnx,num-s2mm-channels = <1>;
   xlnx,dlytmr-resolution = <125>;
   interrupt-parent = <&imux>;
   xlnx,sg-length-width = <26>;
   xlnx,prmry-is-aclk-async = <1>;
   xlnx,include-s2mm-sf = <1>;
   #dma-cells = <1>;
   xlnx,ip-name = "axi_dma";
   xlnx,single-interface = <0>;
   xlnx,sg-include-stscntrl-strm = <0>;
   xlnx,include-s2mm-dre = <0>;
   reg = <0x0 0xa0000000 0x0 0x10000>;
   xlnx,addr-width = <64>;
   xlnx,include-s2mm = <0>;
   clocks = <&misc_clk_3>, <&zynqmp_clk 71>, <&zynqmp_clk 71>;
   xlnx,s-axis-s2mm-tdata-width = <32>;
   xlnx,micro-dma = <0>;
   xlnx,increase-throughput = <0>;
   xlnx,mm2s-data-width = <0x100>;
   xlnx,addrwidth = <0x40>;
   xlnx,include-sg;
   xlnx,sg-use-stsapp-length = <0>;
   xlnx,m-axis-mm2s-tdata-width = <256>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,s2mm-burst-size = <16>;
   xlnx,m-axi-s2mm-data-width = <32>;
   xlnx,num-mm2s-channels = <1>;
   xlnx,enable-multi-channel = <0>;
   status = "okay";
   xlnx,include-mm2s-sf = <1>;
   clock-names = "m_axi_mm2s_aclk" , "m_axi_sg_aclk" , "s_axi_lite_aclk";
   interrupt-names = "mm2s_introut";
   xlnx,include-mm2s = <1>;
   xlnx,include-mm2s-dre = <1>;
   xlnx,name = "DAC_DDR_DMA_axi_dma_0";
   dma_channel_a0000000: dma-channel@a0000000 {
    interrupts = <0 90 4>;
    xlnx,datawidth = <0x100>;
    xlnx,device-id = <0x1>;
    compatible = "xlnx,axi-dma-mm2s-channel";
    xlnx,include-dre;
    dma-channels = <0x1>;
   };
  };
  PS_Subsystem_axi_gpio_adc: gpio@a0240000 {
   xlnx,gpio-board-interface = "Custom";
   compatible = "xlnx,axi-gpio-2.0" , "xlnx,xps-gpio-1.00.a";
   xlnx,all-outputs = <1>;
   #gpio-cells = <2>;
   xlnx,gpio-width = <1>;
   xlnx,dout-default = <0xf>;
   xlnx,is-dual = <0>;
   xlnx,ip-name = "axi_gpio";
   xlnx,tri-default-2 = <0xffffffff>;
   reg = <0x0 0xa0240000 0x0 0x1000>;
   xlnx,all-inputs-2 = <0>;
   clocks = <&zynqmp_clk 71>;
   xlnx,all-outputs-2 = <0>;
   gpio-controller;
   xlnx,interrupt-present = <0>;
   xlnx,gpio2-board-interface = "Custom";
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dout-default-2 = <0x0>;
   status = "okay";
   xlnx,gpio2-width = <32>;
   clock-names = "s_axi_aclk";
   xlnx,tri-default = <0xffffffff>;
   xlnx,name = "PS_Subsystem_axi_gpio_adc";
   xlnx,all-inputs = <0>;
  };
  PS_Subsystem_axi_gpio_dac: gpio@a0202000 {
   xlnx,gpio-board-interface = "Custom";
   compatible = "xlnx,axi-gpio-2.0" , "xlnx,xps-gpio-1.00.a";
   xlnx,all-outputs = <1>;
   #gpio-cells = <2>;
   xlnx,gpio-width = <8>;
   xlnx,dout-default = <0x0>;
   xlnx,is-dual = <0>;
   xlnx,ip-name = "axi_gpio";
   xlnx,tri-default-2 = <0xffffffff>;
   reg = <0x0 0xa0202000 0x0 0x1000>;
   xlnx,all-inputs-2 = <0>;
   clocks = <&zynqmp_clk 71>;
   xlnx,all-outputs-2 = <0>;
   gpio-controller;
   xlnx,interrupt-present = <0>;
   xlnx,gpio2-board-interface = "Custom";
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dout-default-2 = <0x0>;
   status = "okay";
   xlnx,gpio2-width = <32>;
   clock-names = "s_axi_aclk";
   xlnx,tri-default = <0xffffffff>;
   xlnx,name = "PS_Subsystem_axi_gpio_dac";
   xlnx,all-inputs = <0>;
  };
  PS_Subsystem_axi_gpio_mts: gpio@a0300000 {
   xlnx,gpio-board-interface = "Custom";
   compatible = "xlnx,axi-gpio-2.0" , "xlnx,xps-gpio-1.00.a";
   xlnx,all-outputs = <1>;
   #gpio-cells = <2>;
   xlnx,gpio-width = <8>;
   xlnx,dout-default = <0xffffffff>;
   xlnx,is-dual = <0>;
   xlnx,ip-name = "axi_gpio";
   xlnx,tri-default-2 = <0xffffffff>;
   reg = <0x0 0xa0300000 0x0 0x10000>;
   xlnx,all-inputs-2 = <0>;
   clocks = <&zynqmp_clk 71>;
   xlnx,all-outputs-2 = <0>;
   gpio-controller;
   xlnx,interrupt-present = <0>;
   xlnx,gpio2-board-interface = "Custom";
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dout-default-2 = <0x0>;
   status = "okay";
   xlnx,gpio2-width = <32>;
   clock-names = "s_axi_aclk";
   xlnx,tri-default = <0xffffffff>;
   xlnx,name = "PS_Subsystem_axi_gpio_mts";
   xlnx,all-inputs = <0>;
  };
  PS_Subsystem_axi_gpio_spi_mux: gpio@a0205000 {
   xlnx,gpio-board-interface = "Custom";
   compatible = "xlnx,axi-gpio-2.0" , "xlnx,xps-gpio-1.00.a";
   xlnx,all-outputs = <1>;
   #gpio-cells = <2>;
   xlnx,gpio-width = <2>;
   xlnx,dout-default = <0x0>;
   xlnx,is-dual = <0>;
   xlnx,ip-name = "axi_gpio";
   xlnx,tri-default-2 = <0xffffffff>;
   reg = <0x0 0xa0205000 0x0 0x1000>;
   xlnx,all-inputs-2 = <0>;
   clocks = <&zynqmp_clk 71>;
   xlnx,all-outputs-2 = <0>;
   gpio-controller;
   xlnx,interrupt-present = <0>;
   xlnx,gpio2-board-interface = "Custom";
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dout-default-2 = <0x0>;
   status = "okay";
   xlnx,gpio2-width = <32>;
   clock-names = "s_axi_aclk";
   xlnx,tri-default = <0xffffffff>;
   xlnx,name = "PS_Subsystem_axi_gpio_spi_mux";
   xlnx,all-inputs = <0>;
  };
  ex_design_adc_sink_i: exdes_rfadc_data_bram_capture@b0400000 {
   compatible = "xlnx,exdes-rfadc-data-bram-capture-1.0";
   xlnx,edk-special = "MONITOR";
   xlnx,ip-name = "exdes_rfadc_data_bram_capture";
   xlnx,mem-size = <262144>;
   reg = <0x0 0xb0400000 0x0 0x200000>;
   clocks = <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&zynqmp_clk 71>;
   xlnx,axi-addr-top = <19>;
   xlnx,use-div2-clk-0 = <0>;
   xlnx,edk-iptype = "MONITOR";
   xlnx,use-div2-clk-1 = <0>;
   xlnx,use-div2-clk-2 = <0>;
   xlnx,use-div2-clk-3 = <0>;
   status = "okay";
   clock-names = "s0_axis_clock" , "s0_div2_axis_clock" , "s1_axis_clock" , "s1_div2_axis_clock" , "s2_axis_clock" , "s2_div2_axis_clock" , "s3_axis_clock" , "s3_div2_axis_clock" , "s_axi_aclk";
   xlnx,name = "ex_design_adc_sink_i";
  };
  ex_design_dac_source_i: exdes_rfdac_data_bram_stim@b0000000 {
   compatible = "xlnx,exdes-rfdac-data-bram-stim-1.0";
   xlnx,ip-name = "exdes_rfdac_data_bram_stim";
   xlnx,mem-size = <262144>;
   reg = <0x0 0xb0000000 0x0 0x200000>;
   clocks = <&clocking_block_clk_wiz_dac0 0>, <&clocking_block_clk_wiz_dac0 0>, <&clocking_block_clk_wiz_dac1 0>, <&clocking_block_clk_wiz_dac1 0>, <&clocking_block_clk_wiz_dac2 0>, <&clocking_block_clk_wiz_dac2 0>, <&clocking_block_clk_wiz_dac3 0>, <&clocking_block_clk_wiz_dac3 0>, <&zynqmp_clk 71>;
   xlnx,axi-addr-top = <19>;
   xlnx,use-div2-clk-0 = <0>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,use-div2-clk-1 = <0>;
   xlnx,use-div2-clk-2 = <0>;
   status = "okay";
   xlnx,use-div2-clk-3 = <0>;
   clock-names = "m0_axis_clock" , "m0_div2_axis_clock" , "m1_axis_clock" , "m1_div2_axis_clock" , "m2_axis_clock" , "m2_div2_axis_clock" , "m3_axis_clock" , "m3_div2_axis_clock" , "s_axi_aclk";
   xlnx,name = "ex_design_dac_source_i";
  };
  ex_design_rfip: usp_rf_data_converter@b4b00000 {
   xlnx,adc-tdd-rts21 = <1>;
   xlnx,adc-dither32;
   xlnx,adc3-fabric-freq = <0x15f90000>;
   xlnx,dac2-clock-source-mx = <6>;
   xlnx,adc-tdd-rts22 = <1>;
   xlnx,adc-dither33;
   xlnx,mdac-refclk-freq = <6400>;
   xlnx,adc-tdd-rts23 = <1>;
   xlnx,adc-slice31-enable;
   xlnx,adc-nyquist30 = <0>;
   xlnx,adc-nyquist31 = <0>;
   xlnx,dac3-refclk-div = <1>;
   xlnx,axiclk-freq = <0x36d6160>;
   xlnx,adc-nyquist32 = <0>;
   xlnx,adc-nyquist33 = <0>;
   reg = <0x0 0xb4b00000 0x0 0x40000>;
   xlnx,adc-tdd-rts30 = <1>;
   xlnx,adc-slice10-enable;
   xlnx,adc2-slices = <2>;
   xlnx,adc-tdd-rts31 = <1>;
   xlnx,adc2-fs-max = <5>;
   xlnx,adc2-pll-enable;
   xlnx,mdac-fabric-freq = <0>;
   xlnx,dac0-enable = <1>;
   xlnx,adc-tdd-rts32 = <1>;
   xlnx,sysref-master = <0x0>;
   xlnx,adc-tdd-rts33 = <1>;
   xlnx,dac-slice12-enable;
   xlnx,adc3-link-coupling = <0>;
   xlnx,adc2-refclk-div = <1>;
   xlnx,dac-coarse-mixer-freq00 = <0>;
   xlnx,dac-coarse-mixer-freq01 = <0>;
   xlnx,adc0-slices = <2>;
   xlnx,dac-coarse-mixer-freq02 = <0>;
   xlnx,dac0-sampling-rate = <0x780000>;
   xlnx,adc0-fs-max = <5>;
   xlnx,adc2-refclk-freq = <0xea60000>;
   xlnx,dac-coarse-mixer-freq03 = <0>;
   xlnx,dac2-outclk-freq = <0x1d4c0000>;
   xlnx,adc30-dig-port = <1>;
   xlnx,adc22-dig-port = <1>;
   xlnx,dac-coarse-mixer-freq10 = <0>;
   xlnx,dac3-vco = <0x00000001 0xd4c00000>;
   xlnx,dac-coarse-mixer-freq11 = <0>;
   xlnx,name = "ex_design_rfip";
   xlnx,adc2-fabric-freq = <0x15f90000>;
   xlnx,dac-slice10-enable;
   xlnx,dac-coarse-mixer-freq12 = <0>;
   xlnx,dac-coarse-mixer-freq13 = <0>;
   xlnx,adc3-pll-enable;
   xlnx,adc-data-width00 = <12>;
   xlnx,adc-data-width01 = <12>;
   xlnx,adc2-enable = <1>;
   xlnx,adc-data-width02 = <12>;
   xlnx,adc-data-width03 = <12>;
   xlnx,adc0-obs-fabric-freq = <0>;
   xlnx,dac-coarse-mixer-freq20 = <0>;
   xlnx,dac-coarse-mixer-freq21 = <0>;
   xlnx,adc2-obs-fabric-freq = <0>;
   xlnx,dac-coarse-mixer-freq22 = <0>;
   xlnx,dac3-outdiv = <1>;
   xlnx,adc1-band = <0>;
   xlnx,adc3-fbdiv = <36>;
   xlnx,madc-refclk-freq = <2000>;
   xlnx,dac-coarse-mixer-freq23 = <0>;
   xlnx,dac3-link-coupling = <0>;
   xlnx,dac2-band = <3>;
   xlnx,adc-data-width10 = <12>;
   xlnx,adc1-multi-tile-sync;
   xlnx,adc-data-width11 = <12>;
   clock-names = "m0_axis_aclk" , "m1_axis_aclk" , "m2_axis_aclk" , "m3_axis_aclk" , "s0_axis_aclk" , "s1_axis_aclk" , "s2_axis_aclk" , "s3_axis_aclk" , "s_axi_aclk";
   xlnx,adc3-refclk-div = <1>;
   xlnx,adc-data-width12 = <12>;
   xlnx,adc3-multi-tile-sync;
   xlnx,adc-data-width13 = <12>;
   xlnx,madc-decimation-mode00 = <0>;
   xlnx,madc-decimation-mode01 = <0>;
   xlnx,dac-coarse-mixer-freq30 = <0>;
   xlnx,adc1-sampling-rate = <0x438000>;
   xlnx,madc-decimation-mode02 = <0>;
   xlnx,dac-coarse-mixer-freq31 = <0>;
   xlnx,madc-fabric-freq = <0>;
   xlnx,madc-decimation-mode03 = <0>;
   xlnx,dac-coarse-mixer-freq32 = <0>;
   xlnx,adc-slice03-enable;
   xlnx,adc0-enable = <1>;
   xlnx,dac-coarse-mixer-freq33 = <0>;
   xlnx,adc-obs-data-width00 = <8>;
   xlnx,adc-obs-data-width01 = <8>;
   xlnx,adc-data-width20 = <12>;
   xlnx,adc-obs-data-width02 = <8>;
   xlnx,adc-data-width21 = <12>;
   xlnx,mdac-nco-phase00 = <0>;
   xlnx,adc-obs-data-width03 = <8>;
   xlnx,adc1-refclk-freq = <0xea60000>;
   xlnx,adc-data-width22 = <12>;
   xlnx,production-simulation = <0>;
   xlnx,mdac-nco-phase01 = <0>;
   xlnx,dac1-outdiv = <1>;
   xlnx,adc-data-width23 = <12>;
   xlnx,mdac-nco-phase02 = <0>;
   xlnx,adc2-fbdiv = <36>;
   xlnx,mdac-nco-phase03 = <0>;
   xlnx,mdac-data-type00 = <0>;
   xlnx,dac1-outclk-freq = <0x1d4c0000>;
   xlnx,use-bram = <1>;
   xlnx,mdac-data-type01 = <0>;
   xlnx,mdac-data-type02 = <0>;
   xlnx,dac0-vco = <0x00000001 0xd4c00000>;
   xlnx,adc-slice22-enable;
   xlnx,mdac-link-coupling = <0>;
   xlnx,mdac-data-type03 = <0>;
   xlnx,adc-obs-data-width10 = <8>;
   xlnx,disable-bg-cal-en = <1>;
   xlnx,adc-obs-data-width11 = <8>;
   xlnx,adc-coarse-mixer-freq00 = <0>;
   xlnx,adc-data-width30 = <12>;
   xlnx,adc-obs-data-width12 = <8>;
   xlnx,adc1-fabric-freq = <0x15f90000>;
   xlnx,adc-coarse-mixer-freq01 = <0>;
   xlnx,adc-data-width31 = <12>;
   xlnx,adc-obs-data-width13 = <8>;
   xlnx,adc-coarse-mixer-freq02 = <0>;
   xlnx,adc-data-width32 = <12>;
   xlnx,dac-nyquist00 = <0>;
   xlnx,dac-mode00 = <1>;
   xlnx,adc-slice01-enable;
   xlnx,adc-calopt-mode00 = <2>;
   xlnx,adc-coarse-mixer-freq03 = <0>;
   xlnx,adc-data-width33 = <12>;
   xlnx,dac-nyquist01 = <0>;
   xlnx,dac-nco-phase00 = <0>;
   xlnx,dac-mode01 = <1>;
   xlnx,dac3-fbdiv = <32>;
   xlnx,adc-calopt-mode01 = <2>;
   xlnx,dac-nyquist02 = <0>;
   xlnx,dac-nco-phase01 = <0>;
   xlnx,dac-mode02 = <1>;
   xlnx,adc-calopt-mode02 = <2>;
   xlnx,silicon-revision = <1>;
   xlnx,dac-nyquist03 = <0>;
   xlnx,dac-nco-phase02 = <0>;
   xlnx,dac-mode03 = <1>;
   xlnx,dac0-multi-tile-sync;
   xlnx,dac0-interpolation = <2>;
   xlnx,adc11-dig-port = <1>;
   xlnx,adc-calopt-mode03 = <2>;
   xlnx,dac-nco-phase03 = <0>;
   xlnx,dac-data-type00 = <0>;
   xlnx,adc03-dig-port = <1>;
   xlnx,adc1-vco = <0x00000002 0x0f580000>;
   xlnx,dac-tdd-rts00 = <1>;
   xlnx,dac-data-type01 = <0>;
   xlnx,dac2-multi-tile-sync;
   xlnx,adc-obs-data-width20 = <8>;
   xlnx,dac-tdd-rts01 = <1>;
   xlnx,dac-data-type02 = <0>;
   xlnx,adc-obs-data-width21 = <8>;
   xlnx,adc-nco-freq00 = <0>;
   xlnx,adc-coarse-mixer-freq10 = <0>;
   xlnx,dac-tdd-rts02 = <1>;
   xlnx,dac-data-type03 = <0>;
   xlnx,adc-obs-data-width22 = <8>;
   xlnx,adc-nco-freq01 = <0>;
   xlnx,adc1-fbdiv = <36>;
   xlnx,adc-coarse-mixer-freq11 = <0>;
   xlnx,dac-tdd-rts03 = <1>;
   xlnx,dac1-sampling-rate = <0x780000>;
   xlnx,adc-obs-data-width23 = <8>;
   xlnx,adc-nco-freq02 = <0>;
   xlnx,adc-coarse-mixer-freq12 = <0>;
   xlnx,dac-nyquist10 = <0>;
   xlnx,dac-mode10 = <1>;
   xlnx,dac1-vop = <32>;
   xlnx,adc-slice20-enable;
   xlnx,adc-nco-freq03 = <0>;
   xlnx,adc-calopt-mode10 = <2>;
   xlnx,adc-coarse-mixer-freq13 = <0>;
   param-list = [ 00 00 00 00 00 00 b0 b4 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 02 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 69 1d 55 4d 10 75 1f 40 b8 1e 85 eb 51 b8 6e 40 b8 1e 85 eb 51 b8 6e 40 20 00 00 00 01 00 00 00 01 00 00 00 03 00 00 00 00 00 00 00 00 00 24 40 02 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 69 1d 55 4d 10 75 1f 40 b8 1e 85 eb 51 b8 6e 40 b8 1e 85 eb 51 b8 6e 40 20 00 00 00 01 00 00 00 01 00 00 00 03 00 00 00 00 00 00 00 00 00 24 40 02 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 69 1d 55 4d 10 75 1f 40 b8 1e 85 eb 51 b8 6e 40 b8 1e 85 eb 51 b8 6e 40 20 00 00 00 01 00 00 00 01 00 00 00 03 00 00 00 00 00 00 00 00 00 24 40 02 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 69 1d 55 4d 10 75 1f 40 b8 1e 85 eb 51 b8 6e 40 b8 1e 85 eb 51 b8 6e 40 20 00 00 00 01 00 00 00 01 00 00 00 03 00 00 00 00 00 00 00 00 00 24 40 02 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 8b e0 7f 2b d9 b1 11 40 b8 1e 85 eb 51 b8 6e 40 0a d7 a3 70 3d 0a 77 40 24 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 14 40 02 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 8b e0 7f 2b d9 b1 11 40 b8 1e 85 eb 51 b8 6e 40 0a d7 a3 70 3d 0a 77 40 24 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 14 40 02 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 8b e0 7f 2b d9 b1 11 40 b8 1e 85 eb 51 b8 6e 40 0a d7 a3 70 3d 0a 77 40 24 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 14 40 02 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00 8b e0 7f 2b d9 b1 11 40 b8 1e 85 eb 51 b8 6e 40 0a d7 a3 70 3d 0a 77 40 24 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 14 40 02 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 0c 00 00 00 01 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00];
   xlnx,mdac-coarse-mixer-freq00 = <0>;
   xlnx,dac-nyquist11 = <0>;
   xlnx,dac-nco-phase10 = <0>;
   xlnx,dac-mode11 = <1>;
   xlnx,dac-mixer-mode00 = <0>;
   xlnx,adc-calopt-mode11 = <2>;
   xlnx,mdac-coarse-mixer-freq01 = <0>;
   xlnx,dac-nyquist12 = <0>;
   xlnx,dac-nco-phase11 = <0>;
   xlnx,dac-mode12 = <1>;
   xlnx,dac-mixer-mode01 = <0>;
   xlnx,adc-calopt-mode12 = <2>;
   xlnx,mdac-coarse-mixer-freq02 = <0>;
   xlnx,dac-nyquist13 = <0>;
   xlnx,dac-nco-phase12 = <0>;
   xlnx,dac-mode13 = <1>;
   xlnx,dac-mixer-mode02 = <0>;
   xlnx,adc-calopt-mode13 = <2>;
   xlnx,mdac-coarse-mixer-freq03 = <0>;
   xlnx,madc-nyquist00 = <0>;
   xlnx,dac-nco-phase13 = <0>;
   xlnx,dac-mixer-mode03 = <0>;
   xlnx,dac-data-type10 = <0>;
   xlnx,madc-nyquist01 = <0>;
   xlnx,dac-tdd-rts10 = <1>;
   xlnx,dac-data-type11 = <0>;
   xlnx,adc-obs-data-width30 = <8>;
   xlnx,madc-refclk-div = <1>;
   xlnx,madc-nyquist02 = <0>;
   xlnx,madc-mixer-mode00 = <2>;
   xlnx,dac-tdd-rts11 = <1>;
   xlnx,dac-data-type12 = <0>;
   xlnx,adc-obs-data-width31 = <8>;
   xlnx,adc-nco-freq10 = <0>;
   xlnx,adc-coarse-mixer-freq20 = <0>;
   xlnx,madc-nyquist03 = <0>;
   xlnx,madc-mixer-mode01 = <2>;
   xlnx,dac-tdd-rts12 = <1>;
   xlnx,dac-data-type13 = <0>;
   xlnx,dac2-fbdiv = <32>;
   xlnx,adc-obs-data-width32 = <8>;
   xlnx,adc-nco-freq11 = <0>;
   xlnx,adc-coarse-mixer-freq21 = <0>;
   xlnx,madc-mixer-mode02 = <2>;
   xlnx,dac-tdd-rts13 = <1>;
   xlnx,adc-obs-data-width33 = <8>;
   xlnx,adc-nco-freq12 = <0>;
   xlnx,adc3-outdiv = <2>;
   xlnx,adc-coarse-mixer-freq22 = <0>;
   xlnx,madc-tdd-rts00 = <0>;
   xlnx,madc-mixer-mode03 = <2>;
   xlnx,dac-nyquist20 = <0>;
   xlnx,dac-mode20 = <1>;
   xlnx,adc-nco-freq13 = <0>;
   xlnx,adc-calopt-mode20 = <2>;
   xlnx,adc-coarse-mixer-freq23 = <0>;
   xlnx,madc-tdd-rts01 = <0>;
   xlnx,dac-slice22-enable;
   xlnx,dac-nyquist21 = <0>;
   xlnx,dac-nco-phase20 = <0>;
   xlnx,dac-mode21 = <1>;
   xlnx,dac-mixer-mode10 = <0>;
   xlnx,adc-calopt-mode21 = <2>;
   xlnx,madc-tdd-rts02 = <0>;
   xlnx,dac-nyquist22 = <0>;
   xlnx,dac-nco-phase21 = <0>;
   xlnx,dac-mode22 = <1>;
   xlnx,dac-mixer-mode11 = <0>;
   xlnx,converter-setup = <1>;
   xlnx,adc-calopt-mode22 = <2>;
   xlnx,mdac-band = <0>;
   xlnx,madc-tdd-rts03 = <0>;
   xlnx,dac-nyquist23 = <0>;
   xlnx,dac-nco-phase22 = <0>;
   xlnx,dac-mode23 = <1>;
   xlnx,dac-mixer-mode12 = <0>;
   xlnx,adc0-refclk-freq = <0xea60000>;
   xlnx,adc-calopt-mode23 = <2>;
   xlnx,dac-nco-phase23 = <0>;
   xlnx,dac-mixer-mode13 = <0>;
   xlnx,dac-data-type20 = <0>;
   xlnx,adc0-fbdiv = <36>;
   xlnx,mdac-data-width00 = <16>;
   xlnx,dac-tdd-rts20 = <1>;
   xlnx,dac-data-type21 = <0>;
   xlnx,mdac-data-width01 = <16>;
   xlnx,dac-tdd-rts21 = <1>;
   xlnx,dac-data-type22 = <0>;
   xlnx,dac0-outclk-freq = <0x1d4c0000>;
   xlnx,adc-nco-freq20 = <0>;
   xlnx,adc-coarse-mixer-freq30 = <0>;
   xlnx,mdac-data-width02 = <16>;
   xlnx,dac-tdd-rts22 = <1>;
   xlnx,dac-data-type23 = <0>;
   xlnx,dac3-slices = <2>;
   xlnx,adc-nco-freq21 = <0>;
   xlnx,adc-coarse-mixer-freq31 = <0>;
   xlnx,mdac-data-width03 = <16>;
   xlnx,dac-tdd-rts23 = <1>;
   xlnx,dac3-fs-max = <10>;
   xlnx,adc-nco-freq22 = <0>;
   xlnx,adc-coarse-mixer-freq32 = <0>;
   xlnx,dac-nyquist30 = <0>;
   xlnx,dac-mode30 = <1>;
   xlnx,adc-nco-freq23 = <0>;
   xlnx,adc-calopt-mode30 = <2>;
   xlnx,adc-coarse-mixer-freq33 = <0>;
   xlnx,dac-nyquist31 = <0>;
   xlnx,dac-nco-phase30 = <0>;
   xlnx,dac-mode31 = <1>;
   xlnx,dac-mixer-mode20 = <0>;
   status = "okay";
   xlnx,adc-calopt-mode31 = <2>;
   xlnx,dac-nyquist32 = <0>;
   xlnx,dac-nco-phase31 = <0>;
   xlnx,dac-mode32 = <1>;
   xlnx,dac-mixer-mode21 = <0>;
   xlnx,adc0-fabric-freq = <0x15f90000>;
   xlnx,adc-calopt-mode32 = <2>;
   xlnx,madc-nco-phase00 = <0>;
   xlnx,dac-nyquist33 = <0>;
   xlnx,dac-nco-phase32 = <0>;
   xlnx,dac-nco-freq00 = <0>;
   xlnx,dac-mode33 = <1>;
   xlnx,dac-mixer-mode22 = <0>;
   xlnx,adc-calopt-mode33 = <2>;
   xlnx,madc-nco-phase01 = <0>;
   xlnx,dac-nco-phase33 = <0>;
   xlnx,dac-nco-freq01 = <0>;
   xlnx,dac-mixer-type00 = <2>;
   xlnx,dac-mixer-mode23 = <0>;
   xlnx,dac-data-type30 = <0>;
   xlnx,dac1-fbdiv = <32>;
   xlnx,adc1-outdiv = <2>;
   xlnx,madc-nco-phase02 = <0>;
   xlnx,madc-dither00;
   xlnx,dac-tdd-rts30 = <1>;
   xlnx,dac-nco-freq02 = <0>;
   xlnx,dac-mixer-type01 = <2>;
   xlnx,dac-data-type31 = <0>;
   xlnx,dac0-clock-dist = <1>;
   xlnx,adc3-clock-source = <2>;
   xlnx,madc-nco-phase03 = <0>;
   xlnx,madc-dither01;
   xlnx,madc-data-type00 = <0>;
   xlnx,dac-tdd-rts31 = <1>;
   xlnx,dac-slice20-enable;
   xlnx,dac-nco-freq03 = <0>;
   xlnx,dac-mixer-type02 = <2>;
   xlnx,dac-data-type32 = <0>;
   xlnx,adc-nco-freq30 = <0>;
   xlnx,adc2-sampling-rate = <0x438000>;
   xlnx,mdac-interpolation-mode00 = <0>;
   xlnx,madc-dither02;
   xlnx,madc-data-type01 = <0>;
   xlnx,dac-tdd-rts32 = <1>;
   xlnx,dac-mixer-type03 = <2>;
   xlnx,dac-data-type33 = <0>;
   xlnx,adc-nco-freq31 = <0>;
   xlnx,mdac-interpolation-mode01 = <0>;
   xlnx,madc-dither03;
   xlnx,madc-data-type02 = <0>;
   xlnx,dac-tdd-rts33 = <1>;
   xlnx,adc-nco-freq32 = <0>;
   xlnx,adc3-outclk-freq = <0x107ac000>;
   xlnx,mdac-interpolation-mode02 = <0>;
   xlnx,madc-sampling-rate = <2>;
   xlnx,madc-mixer-type00 = <3>;
   xlnx,madc-data-type03 = <0>;
   xlnx,dac-output-current = <0>;
   xlnx,adc-nco-freq33 = <0>;
   xlnx,mdac-interpolation-mode03 = <0>;
   xlnx,madc-mixer-type01 = <3>;
   xlnx,dac-mixer-mode30 = <0>;
   xlnx,adc31-dig-port = <1>;
   xlnx,madc-mixer-type02 = <3>;
   xlnx,pl-clock-freq = <0x7530000>;
   xlnx,dac-mixer-mode31 = <0>;
   xlnx,adc23-dig-port = <1>;
   xlnx,mdac-refclk-div = <1>;
   xlnx,madc-mixer-type03 = <3>;
   xlnx,dac-nco-freq10 = <0>;
   xlnx,dac-mixer-mode32 = <0>;
   xlnx,dac1-slices = <2>;
   xlnx,adc0-clock-source-mx = <0>;
   xlnx,mdac-decoder-mode00 = <0>;
   xlnx,dac-nco-freq11 = <0>;
   xlnx,dac-mixer-type10 = <2>;
   xlnx,dac-mixer-mode33 = <0>;
   xlnx,dac1-fs-max = <10>;
   xlnx,mdac-decoder-mode01 = <0>;
   xlnx,dac-nco-freq12 = <0>;
   xlnx,dac-mixer-type11 = <2>;
   xlnx,adc-nco-phase00 = <0>;
   xlnx,adc00-dig-port = <1>;
   xlnx,adc2-clock-source-mx = <2>;
   xlnx,mdac-decoder-mode02 = <0>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,dac-nco-freq13 = <0>;
   xlnx,dac-mixer-type12 = <2>;
   xlnx,adc-nco-phase01 = <0>;
   xlnx,mdac-decoder-mode03 = <0>;
   xlnx,dac-mixer-type13 = <2>;
   xlnx,adc-nco-phase02 = <0>;
   xlnx,calibration-freeze;
   xlnx,adc-nco-phase03 = <0>;
   xlnx,adc-data-type00 = <1>;
   xlnx,mdac-outclk-freq = <50>;
   xlnx,adc-data-type01 = <1>;
   xlnx,dac0-fbdiv = <32>;
   xlnx,adc-data-type02 = <1>;
   xlnx,adc-data-type03 = <1>;
   xlnx,dac-nco-freq20 = <0>;
   xlnx,adc0-decimation = <1>;
   xlnx,dac-nco-freq21 = <0>;
   xlnx,dac-mixer-type20 = <2>;
   xlnx,madc-coarse-mixer-freq00 = <0>;
   xlnx,dac-nco-freq22 = <0>;
   xlnx,dac-mixer-type21 = <2>;
   xlnx,adc-nco-phase10 = <0>;
   xlnx,madc-coarse-mixer-freq01 = <0>;
   xlnx,dac-nco-freq23 = <0>;
   xlnx,dac-mixer-type22 = <2>;
   xlnx,adc-slice13-enable;
   xlnx,adc-nco-phase11 = <0>;
   xlnx,madc-coarse-mixer-freq02 = <0>;
   xlnx,dac-mixer-type23 = <2>;
   xlnx,dac1-interpolation = <2>;
   xlnx,adc-nco-phase12 = <0>;
   xlnx,madc-coarse-mixer-freq03 = <0>;
   xlnx,dac3-enable = <1>;
   xlnx,adc-nco-phase13 = <0>;
   xlnx,adc-data-type10 = <1>;
   xlnx,adc-data-type11 = <1>;
   xlnx,adc2-clock-source = <2>;
   xlnx,adc-data-type12 = <1>;
   xlnx,adc-data-type13 = <1>;
   xlnx,preset = "None";
   xlnx,vnc-include-ois-change;
   xlnx,dac-nco-freq30 = <0>;
   xlnx,dac2-sampling-rate = <0x780000>;
   xlnx,dac1-clock-dist = <0>;
   xlnx,dac-nco-freq31 = <0>;
   xlnx,dac-mixer-type30 = <2>;
   xlnx,dac-nco-freq32 = <0>;
   xlnx,dac-mixer-type31 = <2>;
   xlnx,adc-nco-phase20 = <0>;
   xlnx,adc3-band = <0>;
   xlnx,dac-nco-freq33 = <0>;
   xlnx,dac-mixer-type32 = <2>;
   xlnx,adc-slice32-enable;
   xlnx,adc-nco-phase21 = <0>;
   xlnx,mdac-vop = <20>;
   xlnx,dac-mixer-type33 = <2>;
   xlnx,dac2-vco = <0x00000001 0xd4c00000>;
   xlnx,adc-nco-phase22 = <0>;
   xlnx,adc-nco-phase23 = <0>;
   xlnx,adc-data-type20 = <1>;
   xlnx,madc-enable = <0>;
   xlnx,adc0-link-coupling = <0>;
   xlnx,adc-data-type21 = <1>;
   xlnx,dac1-clock-source-mx = <5>;
   xlnx,adc0-band = <0>;
   xlnx,adc-data-type22 = <1>;
   xlnx,dac1-band = <3>;
   xlnx,adc-slice11-enable;
   xlnx,adc3-slices = <2>;
   xlnx,adc-data-type23 = <1>;
   xlnx,dac3-clock-source-mx = <7>;
   xlnx,adc2-outclk-freq = <0x107ac000>;
   xlnx,adc3-fs-max = <5>;
   xlnx,dac1-enable = <1>;
   xlnx,adc-nco-phase30 = <0>;
   xlnx,dac-interpolation-mode00 = <2>;
   xlnx,adc-nco-phase31 = <0>;
   xlnx,dac-interpolation-mode01 = <2>;
   xlnx,adc-nco-phase32 = <0>;
   xlnx,adc3-vco = <0x00000002 0x0f580000>;
   xlnx,dac-interpolation-mode02 = <2>;
   xlnx,adc-nco-phase33 = <0>;
   xlnx,adc-data-type30 = <1>;
   xlnx,dac-interpolation-mode03 = <2>;
   xlnx,adc0-clock-dist = <0>;
   xlnx,adc-data-type31 = <1>;
   xlnx,adc1-decimation = <1>;
   xlnx,adc-data-type32 = <1>;
   xlnx,adc-slice30-enable;
   xlnx,adc-data-type33 = <1>;
   xlnx,adc-decimation-mode00 = <1>;
   xlnx,dac3-vop = <32>;
   xlnx,adc20-dig-port = <1>;
   xlnx,adc-decimation-mode01 = <1>;
   xlnx,adc12-dig-port = <1>;
   xlnx,adc-decimation-mode02 = <1>;
   xlnx,adc-decimation-mode03 = <1>;
   interrupt-names = "irq";
   xlnx,ip-type = <2>;
   xlnx,dac-interpolation-mode10 = <2>;
   xlnx,adc1-clock-source = <2>;
   xlnx,dac-interpolation-mode11 = <2>;
   xlnx,adc1-slices = <2>;
   xlnx,dac-interpolation-mode12 = <2>;
   xlnx,dac3-refclk-freq = <0xea60000>;
   xlnx,adc1-fs-max = <5>;
   compatible = "xlnx,usp-rf-data-converter-2.6";
   xlnx,dac-interpolation-mode13 = <2>;
   xlnx,dac2-clock-dist = <0>;
   xlnx,adc3-sampling-rate = <0x438000>;
   xlnx,adc-decimation-mode10 = <1>;
   xlnx,dac-slice32-enable;
   xlnx,adc-decimation-mode11 = <1>;
   xlnx,madc-outclk-freq = <0xee6b28>;
   xlnx,adc-decimation-mode12 = <1>;
   xlnx,adc-decimation-mode13 = <1>;
   xlnx,mdac-enable = <0>;
   xlnx,dac-interpolation-mode20 = <2>;
   xlnx,dac0-link-coupling = <0>;
   xlnx,dac-interpolation-mode21 = <2>;
   xlnx,dac3-fabric-freq = <0xea60000>;
   xlnx,high-speed-adc = <1>;
   xlnx,dac-interpolation-mode22 = <2>;
   xlnx,dac-interpolation-mode23 = <2>;
   xlnx,adc-decimation-mode20 = <1>;
   xlnx,adc3-enable = <1>;
   xlnx,adc-decimation-mode21 = <1>;
   xlnx,adc-decimation-mode22 = <1>;
   xlnx,adc-decimation-mode23 = <1>;
   xlnx,dac-interpolation-mode30 = <2>;
   xlnx,dac-interpolation-mode31 = <2>;
   xlnx,adc1-outclk-freq = <0x107ac000>;
   xlnx,adc1-clock-dist = <0>;
   xlnx,dac-slice30-enable;
   xlnx,dac-interpolation-mode32 = <2>;
   xlnx,adc2-decimation = <1>;
   xlnx,dac-interpolation-mode33 = <2>;
   xlnx,adc0-vco = <0x00000002 0x0f580000>;
   xlnx,mdac-nyquist00 = <0>;
   xlnx,dac2-interpolation = <2>;
   xlnx,adc0-clock-source = <2>;
   xlnx,adc-decimation-mode30 = <1>;
   xlnx,mdac-nyquist01 = <0>;
   xlnx,adc-decimation-mode31 = <1>;
   xlnx,mdac-nyquist02 = <0>;
   xlnx,adc1-obs-fabric-freq = <0>;
   xlnx,adc-decimation-mode32 = <1>;
   xlnx,mdac-nyquist03 = <0>;
   xlnx,dac0-vop = <32>;
   xlnx,adc-decimation-mode33 = <1>;
   xlnx,adc3-obs-fabric-freq = <0>;
   xlnx,mdac-tdd-rts00 = <0>;
   xlnx,dac3-sampling-rate = <0x780000>;
   xlnx,mdac-tdd-rts01 = <0>;
   xlnx,dac3-clock-dist = <0>;
   xlnx,adc1-enable = <1>;
   xlnx,adc0-multi-tile-sync;
   xlnx,mdac-tdd-rts02 = <0>;
   xlnx,mdac-tdd-rts03 = <0>;
   xlnx,mdac-mode00 = <0>;
   xlnx,adc2-multi-tile-sync;
   xlnx,mdac-mode01 = <0>;
   xlnx,reserved-3 = <110000>;
   xlnx,adc32-dig-port = <1>;
   xlnx,mdac-mode02 = <0>;
   xlnx,dac2-refclk-freq = <0xea60000>;
   xlnx,dac0-pll-enable;
   xlnx,mdac-mode03 = <0>;
   xlnx,dac2-outdiv = <1>;
   xlnx,adc1-link-coupling = <0>;
   xlnx,adc-mixer-mode00 = <0>;
   xlnx,adc01-dig-port = <1>;
   xlnx,adc-mixer-mode01 = <0>;
   xlnx,adc-slice23-enable;
   xlnx,adc-mixer-mode02 = <0>;
   xlnx,adc-mixer-mode03 = <0>;
   xlnx,tb-dac-fft;
   xlnx,dac2-fabric-freq = <0xea60000>;
   xlnx,dac3-clock-source = <4>;
   xlnx,vnc-include-fs2-change;
   xlnx,adc-slice02-enable;
   xlnx,dac-data-width00 = <16>;
   xlnx,dac0-refclk-div = <1>;
   xlnx,adc2-clock-dist = <1>;
   xlnx,dac-decoder-mode00 = <0>;
   xlnx,dac-data-width01 = <16>;
   xlnx,adc-mixer-mode10 = <0>;
   xlnx,adc3-decimation = <1>;
   xlnx,mdac-sampling-rate = <0x61a800>;
   xlnx,dac-decoder-mode01 = <0>;
   xlnx,dac-data-width02 = <16>;
   xlnx,analog-detection = <1>;
   xlnx,adc-mixer-mode11 = <0>;
   xlnx,madc-band = <0>;
   xlnx,dac-decoder-mode02 = <0>;
   xlnx,dac-data-width03 = <16>;
   xlnx,adc-mixer-mode12 = <0>;
   num-insts = <1>;
   xlnx,dac-decoder-mode03 = <0>;
   xlnx,dac0-outdiv = <1>;
   xlnx,adc-mixer-mode13 = <0>;
   xlnx,madc-data-width00 = <8>;
   xlnx,madc-data-width01 = <8>;
   xlnx,sysref-source = <1>;
   xlnx,adc0-outclk-freq = <0x107ac000>;
   xlnx,madc-data-width02 = <8>;
   xlnx,madc-data-width03 = <8>;
   xlnx,dac-vop-mode = <1>;
   xlnx,adc-slice21-enable;
   xlnx,dac-data-width10 = <16>;
   xlnx,adc-obs-decimation-mode00 = <1>;
   xlnx,dac-decoder-mode10 = <0>;
   xlnx,dac-data-width11 = <16>;
   xlnx,dac1-multi-tile-sync;
   xlnx,adc-obs-decimation-mode01 = <1>;
   xlnx,adc-mixer-mode20 = <0>;
   xlnx,madc-calopt-mode00 = <1>;
   xlnx,dac-decoder-mode11 = <0>;
   xlnx,dac-data-width12 = <16>;
   xlnx,adc-obs-decimation-mode02 = <0>;
   xlnx,adc-mixer-mode21 = <0>;
   xlnx,ip-name = "usp_rf_data_converter";
   xlnx,madc-calopt-mode01 = <1>;
   xlnx,dac-decoder-mode12 = <0>;
   xlnx,dac-data-width13 = <16>;
   xlnx,dac3-multi-tile-sync;
   xlnx,adc-obs-decimation-mode03 = <0>;
   xlnx,adc-mixer-mode22 = <0>;
   xlnx,madc-calopt-mode02 = <1>;
   xlnx,dac-decoder-mode13 = <0>;
   xlnx,adc-slice00-enable;
   xlnx,adc-mixer-type00 = <2>;
   xlnx,adc-mixer-mode23 = <0>;
   xlnx,madc-calopt-mode03 = <1>;
   xlnx,dac1-pll-enable;
   xlnx,dac1-link-coupling = <0>;
   xlnx,adc-mixer-type01 = <2>;
   xlnx,adc-mixer-type02 = <2>;
   xlnx,adc-mixer-type03 = <2>;
   xlnx,dac-data-width20 = <16>;
   xlnx,adc-obs-decimation-mode10 = <1>;
   xlnx,dac-decoder-mode20 = <0>;
   xlnx,dac-data-width21 = <16>;
   xlnx,adc-obs-decimation-mode11 = <1>;
   xlnx,adc-mixer-mode30 = <0>;
   xlnx,dac-decoder-mode21 = <0>;
   xlnx,dac-data-width22 = <16>;
   xlnx,dac1-refclk-freq = <0xea60000>;
   xlnx,adc-obs-decimation-mode12 = <1>;
   xlnx,adc-mixer-mode31 = <0>;
   xlnx,dac-decoder-mode22 = <0>;
   xlnx,dac-data-width23 = <16>;
   xlnx,dac2-clock-source = <4>;
   xlnx,adc-obs-decimation-mode13 = <1>;
   xlnx,adc-mixer-mode32 = <0>;
   xlnx,dac-decoder-mode23 = <0>;
   xlnx,adc-mixer-type10 = <2>;
   xlnx,adc-mixer-mode33 = <0>;
   xlnx,dac-slice02-enable;
   xlnx,adc-mixer-type11 = <2>;
   xlnx,adc-mixer-type12 = <2>;
   xlnx,adc2-band = <0>;
   xlnx,madc-nco-freq00 = <0>;
   xlnx,dac3-band = <3>;
   xlnx,dac1-refclk-div = <1>;
   xlnx,adc-mixer-type13 = <2>;
   xlnx,adc3-clock-dist = <0>;
   interrupt-parent = <&imux>;
   xlnx,madc-nco-freq01 = <0>;
   xlnx,adc21-dig-port = <1>;
   xlnx,madc-nco-freq02 = <0>;
   xlnx,dac-data-width30 = <16>;
   xlnx,adc-obs-decimation-mode20 = <1>;
   xlnx,adc13-dig-port = <1>;
   xlnx,madc-nco-freq03 = <0>;
   xlnx,dac-decoder-mode30 = <0>;
   xlnx,dac-data-width31 = <16>;
   xlnx,dac3-interpolation = <2>;
   xlnx,dac1-fabric-freq = <0xea60000>;
   xlnx,adc-obs-decimation-mode21 = <1>;
   xlnx,dac-decoder-mode31 = <0>;
   xlnx,dac-data-width32 = <16>;
   xlnx,adc-obs-decimation-mode22 = <1>;
   xlnx,adc0-pll-enable;
   xlnx,dac-decoder-mode32 = <0>;
   xlnx,dac-data-width33 = <16>;
   xlnx,dac0-band = <3>;
   xlnx,adc-obs-decimation-mode23 = <1>;
   xlnx,adc2-outdiv = <2>;
   xlnx,dac-decoder-mode33 = <0>;
   xlnx,adc-mixer-type20 = <2>;
   xlnx,ams-factory-var = <0>;
   xlnx,adc-mixer-type21 = <2>;
   xlnx,adc-mixer-type22 = <2>;
   xlnx,dac1-vco = <0x00000001 0xd4c00000>;
   xlnx,adc-mixer-type23 = <2>;
   xlnx,tb-adc-fft;
   xlnx,adc-obs-decimation-mode30 = <1>;
   xlnx,dac-slice00-enable;
   xlnx,adc-obs-decimation-mode31 = <1>;
   interrupts = < 0 89 1 >;
   xlnx,dac2-slices = <2>;
   xlnx,adc-obs-decimation-mode32 = <1>;
   xlnx,rf-analyzer = <1>;
   xlnx,dac2-pll-enable;
   xlnx,dac2-fs-max = <10>;
   xlnx,adc-obs-decimation-mode33 = <1>;
   xlnx,adc2-link-coupling = <0>;
   xlnx,adc-mixer-type30 = <2>;
   xlnx,adc0-refclk-div = <1>;
   xlnx,adc-mixer-type31 = <2>;
   xlnx,adc-dither00;
   xlnx,madc-link-coupling = <0>;
   xlnx,adc-mixer-type32 = <2>;
   xlnx,adc-dither01;
   xlnx,adc-mixer-type33 = <2>;
   xlnx,adc2-vco = <0x00000002 0x0f580000>;
   xlnx,adc-dither02;
   xlnx,dac1-clock-source = <4>;
   xlnx,adc0-outdiv = <2>;
   xlnx,adc-dither03;
   clocks = <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&clocking_block_clk_wiz_dac0 0>, <&clocking_block_clk_wiz_dac1 0>, <&clocking_block_clk_wiz_dac2 0>, <&clocking_block_clk_wiz_dac3 0>, <&zynqmp_clk 71>;
   xlnx,mdac-mixer-mode00 = <2>;
   xlnx,mdac-mixer-mode01 = <2>;
   xlnx,adc-nyquist00 = <0>;
   xlnx,adc1-clock-source-mx = <1>;
   xlnx,mdac-mixer-mode02 = <2>;
   xlnx,adc-nyquist01 = <0>;
   xlnx,mdac-mixer-mode03 = <2>;
   xlnx,dac2-vop = <32>;
   xlnx,adc-nyquist02 = <0>;
   xlnx,adc3-clock-source-mx = <3>;
   xlnx,mdac-nco-freq00 = <0>;
   xlnx,adc-nyquist03 = <0>;
   xlnx,mdac-nco-freq01 = <0>;
   xlnx,dac2-refclk-div = <1>;
   xlnx,adc-dither10;
   xlnx,mdac-nco-freq02 = <0>;
   xlnx,dac0-refclk-freq = <0xea60000>;
   xlnx,adc-tdd-rts00 = <1>;
   xlnx,adc-dither11;
   xlnx,mdac-nco-freq03 = <0>;
   xlnx,dac0-slices = <2>;
   xlnx,adc-tdd-rts01 = <1>;
   xlnx,adc-dither12;
   xlnx,dac0-fs-max = <10>;
   xlnx,adc-tdd-rts02 = <1>;
   xlnx,adc-dither13;
   xlnx,adc-tdd-rts03 = <1>;
   xlnx,adc1-pll-enable;
   xlnx,adc-nyquist10 = <0>;
   xlnx,adc-nyquist11 = <0>;
   xlnx,adc-nyquist12 = <0>;
   xlnx,adc-nyquist13 = <0>;
   xlnx,dac0-fabric-freq = <0xea60000>;
   xlnx,adc-slice33-enable;
   xlnx,adc-dither20;
   xlnx,adc-tdd-rts10 = <1>;
   xlnx,adc-dither21;
   xlnx,adc-tdd-rts11 = <1>;
   xlnx,adc33-dig-port = <1>;
   xlnx,adc-dither22;
   xlnx,adc-tdd-rts12 = <1>;
   xlnx,adc-dither23;
   xlnx,adc3-refclk-freq = <0xea60000>;
   xlnx,dac2-link-coupling = <0>;
   xlnx,adc-tdd-rts13 = <1>;
   xlnx,dac3-pll-enable;
   xlnx,calibration-time = <10>;
   xlnx,adc-slice12-enable;
   xlnx,adc-nyquist20 = <0>;
   xlnx,adc10-dig-port = <1>;
   xlnx,dac3-outclk-freq = <0x1d4c0000>;
   xlnx,adc-nyquist21 = <0>;
   xlnx,adc02-dig-port = <1>;
   xlnx,adc1-refclk-div = <1>;
   xlnx,mdac-mixer-type00 = <3>;
   xlnx,dac2-enable = <1>;
   xlnx,adc-nyquist22 = <0>;
   xlnx,mdac-mixer-type01 = <3>;
   xlnx,dac0-clock-source = <4>;
   xlnx,adc-nyquist23 = <0>;
   xlnx,mdac-mixer-type02 = <3>;
   xlnx,adc-dither30;
   xlnx,mdac-mixer-type03 = <3>;
   xlnx,dac0-clock-source-mx = <4>;
   xlnx,component-name = "rfdc_ex_rfip_0";
   xlnx,adc-tdd-rts20 = <1>;
   xlnx,adc-dither31;
   xlnx,adc0-sampling-rate = <0x438000>;
   dac@0 {
    xlnx,fabric-freq = "245.760";
    xlnx,outdiv = <0x1>;
    xlnx,slices = <0x2>;
    xlnx,pll-enable = <0x1>;
    xlnx,sampling-rate = "7.86432";
    xlnx,fs-max = "10.000";
    xlnx,link-coupling = <0x0>;
    xlnx,refclk-freq = "245.760";
    xlnx,fbdiv = <0x20>;
    xlnx,band = <0x3>;
    xlnx,enable = <0x1>;
    xlnx,refclk-div = <0x1>;
    dac0ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac0ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac0ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac0ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac0dp@0 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac0dp@1 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac0dp@2 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac0dp@3 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
   };
   dac@1 {
    xlnx,fabric-freq = "245.760";
    xlnx,outdiv = <0x1>;
    xlnx,slices = <0x2>;
    xlnx,pll-enable = <0x1>;
    xlnx,sampling-rate = "7.86432";
    xlnx,fs-max = "10.000";
    xlnx,link-coupling = <0x0>;
    xlnx,refclk-freq = "245.760";
    xlnx,fbdiv = <0x20>;
    xlnx,band = <0x3>;
    xlnx,enable = <0x1>;
    xlnx,refclk-div = <0x1>;
    dac1ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac1ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac1ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac1ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac1dp@0 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac1dp@1 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac1dp@2 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac1dp@3 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
   };
   dac@2 {
    xlnx,fabric-freq = "245.760";
    xlnx,outdiv = <0x1>;
    xlnx,slices = <0x2>;
    xlnx,pll-enable = <0x1>;
    xlnx,sampling-rate = "7.86432";
    xlnx,fs-max = "10.000";
    xlnx,link-coupling = <0x0>;
    xlnx,refclk-freq = "245.760";
    xlnx,fbdiv = <0x20>;
    xlnx,band = <0x3>;
    xlnx,enable = <0x1>;
    xlnx,refclk-div = <0x1>;
    dac2ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac2ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac2ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac2ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac2dp@0 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac2dp@1 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac2dp@2 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac2dp@3 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
   };
   dac@3 {
    xlnx,fabric-freq = "245.760";
    xlnx,outdiv = <0x1>;
    xlnx,slices = <0x2>;
    xlnx,pll-enable = <0x1>;
    xlnx,sampling-rate = "7.86432";
    xlnx,fs-max = "10.000";
    xlnx,link-coupling = <0x0>;
    xlnx,refclk-freq = "245.760";
    xlnx,fbdiv = <0x20>;
    xlnx,band = <0x3>;
    xlnx,enable = <0x1>;
    xlnx,refclk-div = <0x1>;
    dac3ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac3ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac3ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    dac3ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,decoder-mode = <0x0>;
     xlnx,invsinc-ctrl = <0x0>;
     xlnx,slice-enable = <0x0>;
    };
    dac3dp@0 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac3dp@1 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac3dp@2 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
    dac3dp@3 {
     xlnx,interpolation-mode = <0x2>;
     xlnx,nco-freq = "0.0";
     xlnx,data-width = <0x10>;
     xlnx,mixer-type = <0x2>;
     xlnx,adder-enable = <0x0>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x0>;
    };
   };
   adc@0 {
    xlnx,fabric-freq = "368.640";
    xlnx,refclk-freq = "245.760";
    xlnx,slices = <0x2>;
    xlnx,refclk-div = <0x1>;
    xlnx,outdiv = <0x2>;
    xlnx,fbdiv = <0x24>;
    xlnx,enable = <0x1>;
    xlnx,fs-max = "5.000";
    xlnx,sampling-rate = "4.42368";
    xlnx,pll-enable = <0x1>;
    xlnx,band = <0x0>;
    adc0ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc0ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc0ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc0ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc0dp@0 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc0dp@1 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc0dp@2 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc0dp@3 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
   };
   adc@1 {
    xlnx,fabric-freq = "368.640";
    xlnx,refclk-freq = "245.760";
    xlnx,slices = <0x2>;
    xlnx,refclk-div = <0x1>;
    xlnx,outdiv = <0x2>;
    xlnx,fbdiv = <0x24>;
    xlnx,enable = <0x1>;
    xlnx,fs-max = "5.000";
    xlnx,sampling-rate = "4.42368";
    xlnx,pll-enable = <0x1>;
    xlnx,band = <0x0>;
    adc1ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc1ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc1ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc1ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc1dp@0 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc1dp@1 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc1dp@2 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc1dp@3 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
   };
   adc@2 {
    xlnx,fabric-freq = "368.640";
    xlnx,refclk-freq = "245.760";
    xlnx,slices = <0x2>;
    xlnx,refclk-div = <0x1>;
    xlnx,outdiv = <0x2>;
    xlnx,fbdiv = <0x24>;
    xlnx,enable = <0x1>;
    xlnx,fs-max = "5.000";
    xlnx,sampling-rate = "4.42368";
    xlnx,pll-enable = <0x1>;
    xlnx,band = <0x0>;
    adc2ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc2ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc2ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc2ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc2dp@0 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc2dp@1 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc2dp@2 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc2dp@3 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
   };
   adc@3 {
    xlnx,fabric-freq = "368.640";
    xlnx,refclk-freq = "245.760";
    xlnx,slices = <0x2>;
    xlnx,refclk-div = <0x1>;
    xlnx,outdiv = <0x2>;
    xlnx,fbdiv = <0x24>;
    xlnx,enable = <0x1>;
    xlnx,fs-max = "5.000";
    xlnx,sampling-rate = "4.42368";
    xlnx,pll-enable = <0x1>;
    xlnx,band = <0x0>;
    adc3ap@0 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc3ap@1 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc3ap@2 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc3ap@3 {
     xlnx,mixer-mode = <0x0>;
     xlnx,slice-enable = <0x1>;
    };
    adc3dp@0 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc3dp@1 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc3dp@2 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
    adc3dp@3 {
     xlnx,nco-freq = <0x0>;
     xlnx,decimation-mode = <0x1>;
     xlnx,data-width = <0xc>;
     xlnx,mixer-type = <0x2>;
     xlnx,fifo-enable = <0x0>;
     xlnx,data-type = <0x1>;
    };
   };
  };
  ex_design_tdd_module_i: exdes_tddrtsctrl@b0200000 {
   xlnx,count-width = <19>;
   compatible = "xlnx,exdes-tddrtsctrl-1.0";
   status = "okay";
   clock-names = "adc0_clk" , "adc1_clk" , "adc2_clk" , "adc3_clk" , "dac0_clk" , "dac1_clk" , "dac2_clk" , "dac3_clk" , "s_axi_aclk";
   xlnx,ip-name = "exdes_tddrtsctrl";
   xlnx,edk-iptype = "PERIPHERAL";
   reg = <0x0 0xb0200000 0x0 0x10000>;
   clocks = <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&misc_clk_1>, <&clocking_block_clk_wiz_dac0 0>, <&clocking_block_clk_wiz_dac1 0>, <&clocking_block_clk_wiz_dac2 0>, <&clocking_block_clk_wiz_dac3 0>, <&zynqmp_clk 71>;
   xlnx,name = "ex_design_tdd_module_i";
  };
 };
};
# 6 "/tmp/tmpe9hemm83" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/pcw.dtsi" 1
 &psu_cortexa53_0 {
  xlnx,psu-ep = <1>;
  xlnx,pss-video-ref-clk-freq = <33333000>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  xlnx,psu-silicon-version = <3>;
  cpu-frequency = <1199988037>;
  xlnx,cpu-clk-freq-hz = <1199988037>;
  xlnx,pss-gt-ref-clk-freq = <33333000>;
  xlnx,pss-ref-clk-freq = <33333000>;
  bus-handle = <&amba>;
  xlnx,pss-aux-ref-clk-freq = <33333000>;
  xlnx,psu-device = "PS8a";
  xlnx,timestamp-clk-freq = <99999001>;
  stamp-frequency = <99999001>;
  xlnx,pss-alt-ref-clk-freq = <33333000>;
 };
 &psu_cortexa53_1 {
  xlnx,timestamp-clk-freq = <99999001>;
  xlnx,psu-ep = <1>;
  xlnx,pss-ref-clk-freq = <33333000>;
  stamp-frequency = <99999001>;
  xlnx,cpu-1x-clk-freq-hz = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,psu-silicon-version = <3>;
  xlnx,psu-device = "PS8a";
  xlnx,cpu-clk-freq-hz = <1199988037>;
  bus-handle = <&amba>;
  cpu-frequency = <1199988037>;
 };
 &psu_cortexa53_2 {
  xlnx,timestamp-clk-freq = <99999001>;
  xlnx,psu-ep = <1>;
  xlnx,pss-ref-clk-freq = <33333000>;
  stamp-frequency = <99999001>;
  xlnx,cpu-1x-clk-freq-hz = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,psu-silicon-version = <3>;
  xlnx,psu-device = "PS8a";
  xlnx,cpu-clk-freq-hz = <1199988037>;
  bus-handle = <&amba>;
  cpu-frequency = <1199988037>;
 };
 &psu_cortexa53_3 {
  xlnx,timestamp-clk-freq = <99999001>;
  xlnx,psu-ep = <1>;
  xlnx,pss-ref-clk-freq = <33333000>;
  stamp-frequency = <99999001>;
  xlnx,cpu-1x-clk-freq-hz = <0>;
  xlnx,ip-name = "psu_cortexa53";
  xlnx,psu-silicon-version = <3>;
  xlnx,psu-device = "PS8a";
  xlnx,cpu-clk-freq-hz = <1199988037>;
  bus-handle = <&amba>;
  cpu-frequency = <1199988037>;
 };
 &amba {
  psu_r5_tcm_ram_global: psu_r5_tcm_ram@ffe00000 {
   compatible = "xlnx,psu-r5-tcm-ram-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_tcm_ram";
   reg = <0x0 0xffe00000 0x0 0x40000>;
   xlnx,name = "psu_r5_tcm_ram_global";
  };
  psu_r5_tcm_ram_0: psu_r5_tcm_ram@0 {
   compatible = "xlnx,psu-r5-tcm-ram-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_tcm_ram";
   reg = <0x0 0x0 0x0 0x40000>;
   xlnx,name = "psu_r5_tcm_ram_0";
  };
  psu_ocm_ram_0: psu_ocm_ram_0@fffc0000 {
   compatible = "xlnx,psu-ocm-ram-0-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 11>;
   xlnx,ip-name = "psu_ocm_ram_0";
   reg = <0x0 0xfffc0000 0x0 0x40000>;
   xlnx,name = "psu_ocm_ram_0";
  };
  psu_r5_1_btcm: psu_r5_1_btcm@20000 {
   xlnx,power-domain = <16>;
   compatible = "xlnx,psu-r5-1-btcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 18>;
   xlnx,ip-name = "psu_r5_1_btcm";
   xlnx,bank-size = <0x10000>;
   reg = <0x0 0x20000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_btcm";
  };
  psu_r5_1_btcm_global: psu_r5_1_btcm_global@ffeb0000 {
   compatible = "xlnx,psu-r5-1-btcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 18>;
   xlnx,ip-name = "psu_r5_1_btcm_global";
   reg = <0x0 0xffeb0000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_btcm_global";
  };
  psu_r5_1_atcm: psu_r5_1_atcm@0 {
   xlnx,power-domain = <15>;
   compatible = "xlnx,psu-r5-1-atcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 17>;
   xlnx,ip-name = "psu_r5_1_atcm";
   xlnx,bank-size = <0x10000>;
   reg = <0x0 0x0 0x0 0x10000>;
   xlnx,name = "psu_r5_1_atcm";
  };
  psu_r5_1_atcm_global: psu_r5_1_atcm_global@ffe90000 {
   compatible = "xlnx,psu-r5-1-atcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 17>;
   xlnx,ip-name = "psu_r5_1_atcm_global";
   reg = <0x0 0xffe90000 0x0 0x10000>;
   xlnx,name = "psu_r5_1_atcm_global";
  };
  psu_r5_0_btcm_lockstep: psu_r5_0_btcm_lockstep@ffe30000 {
   compatible = "xlnx,psu-r5-0-btcm-lockstep-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm_lockstep";
   xlnx,is-hierarchy;
   reg = <0x0 0xffe30000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm_lockstep";
  };
  psu_r5_0_btcm: psu_r5_0_btcm@20000 {
   xlnx,power-domain = <18>;
   compatible = "xlnx,psu-r5-0-btcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm";
   xlnx,bank-size = <0x10000>;
   reg = <0x0 0x20000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm";
  };
  psu_r5_0_btcm_global: psu_r5_0_btcm_global@ffe20000 {
   compatible = "xlnx,psu-r5-0-btcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 16>;
   xlnx,ip-name = "psu_r5_0_btcm_global";
   reg = <0x0 0xffe20000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_btcm_global";
  };
  psu_r5_0_atcm_lockstep: psu_r5_0_atcm_lockstep@ffe10000 {
   compatible = "xlnx,psu-r5-0-atcm-lockstep-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm_lockstep";
   xlnx,is-hierarchy;
   reg = <0x0 0xffe10000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm_lockstep";
  };
  psu_r5_0_atcm: psu_r5_0_atcm@0 {
   xlnx,power-domain = <17>;
   compatible = "xlnx,psu-r5-0-atcm-1.0";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm";
   xlnx,bank-size = <0x10000>;
   reg = <0x0 0x0 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm";
  };
  psu_r5_0_atcm_global: psu_r5_0_atcm_global@ffe00000 {
   compatible = "xlnx,psu-r5-0-atcm-global-1.0" , "mmio-sram";
   status = "okay";
   power-domains = <&zynqmp_firmware 15>;
   xlnx,ip-name = "psu_r5_0_atcm_global";
   reg = <0x0 0xffe00000 0x0 0x10000>;
   xlnx,name = "psu_r5_0_atcm_global";
  };
  psu_bbram_0: psu_bbram_0@ffcd0000 {
   compatible = "xlnx,psu-bbram-0-1.0";
   status = "okay";
   xlnx,ip-name = "psu_bbram_0";
   reg = <0x0 0xffcd0000 0x0 0x10000>;
   xlnx,name = "psu_bbram_0";
  };
  psu_pmu_ram: psu_pmu_ram@ffdc0000 {
   compatible = "xlnx,psu-pmu-ram-1.0";
   status = "okay";
   xlnx,ip-name = "psu_pmu_ram";
   reg = <0x0 0xffdc0000 0x0 0x20000>;
   xlnx,name = "psu_pmu_ram";
  };
  psu_pmu_iomodule: psu_pmu_iomodule@ffd40000 {
   compatible = "xlnx,psu-pmu-iomodule-1.0";
   xlnx,gpo4-polarity = <0>;
   xlnx,gpo2-enable = <1>;
   xlnx,gpo4-enable = <1>;
   xlnx,ip-name = "psu_pmu_iomodule";
   reg = <0x0 0xffd40000 0x0 0x20000>;
   xlnx,gpo3-polarity = <0>;
   xlnx,gpo5-polarity = <0>;
   xlnx,gpo3-enable = <1>;
   status = "okay";
   xlnx,gpo5-enable = <1>;
   xlnx,name = "psu_pmu_iomodule";
   xlnx,gpo2-polarity = <0>;
  };
  psu_pmu_global_0: psu_pmu_global_0@ffd80000 {
   compatible = "xlnx,psu-pmu-global-0-1.0";
   status = "okay";
   xlnx,ip-name = "psu_pmu_global_0";
   reg = <0x0 0xffd80000 0x0 0x40000>;
   xlnx,name = "psu_pmu_global_0";
  };
  psu_mbistjtag: psu_mbistjtag@ffcf0000 {
   compatible = "xlnx,psu-mbistjtag-1.0";
   status = "okay";
   xlnx,ip-name = "psu_mbistjtag";
   reg = <0x0 0xffcf0000 0x0 0x10000>;
   xlnx,name = "psu_mbistjtag";
  };
  psu_rsa: psu_rsa@ffce0000 {
   compatible = "xlnx,psu-rsa-1.0";
   status = "okay";
   xlnx,ip-name = "psu_rsa";
   reg = <0x0 0xffce0000 0x0 0x10000>;
   xlnx,name = "psu_rsa";
  };
  psu_efuse: psu_efuse@ffcc0000 {
   compatible = "xlnx,psu-efuse-1.0";
   status = "okay";
   xlnx,ip-name = "psu_efuse";
   reg = <0x0 0xffcc0000 0x0 0x10000>;
   xlnx,name = "psu_efuse";
  };
  psu_csu_0: psu_csu@ffca0000 {
   xlnx,csu-board-interface = "custom";
   compatible = "xlnx,psu-csu-1.0";
   status = "okay";
   xlnx,can-clk-freq-hz = <180000000>;
   xlnx,ip-name = "psu_csu";
   reg = <0x0 0xffca0000 0x0 0x10000>;
   xlnx,name = "psu_csu_0";
  };
  psu_fpd_gpv: psu_fpd_gpv@fd700000 {
   compatible = "xlnx,psu-fpd-gpv-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_gpv";
   reg = <0x0 0xfd700000 0x0 0x100000>;
   xlnx,name = "psu_fpd_gpv";
  };
  psu_cci_gpv: psu_cci_gpv@fd6e0000 {
   compatible = "xlnx,psu-cci-gpv-1.0";
   status = "okay";
   xlnx,ip-name = "psu_cci_gpv";
   reg = <0x0 0xfd6e0000 0x0 0x10000>;
   xlnx,name = "psu_cci_gpv";
  };
  psu_fpd_slcr_secure: psu_fpd_slcr_secure@fd690000 {
   compatible = "xlnx,psu-fpd-slcr-secure-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_slcr_secure";
   reg = <0x0 0xfd690000 0x0 0x40000>;
   xlnx,name = "psu_fpd_slcr_secure";
  };
  psu_fpd_slcr: psu_fpd_slcr@fd610000 {
   compatible = "xlnx,psu-fpd-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_slcr";
   reg = <0x0 0xfd610000 0x0 0x80000>;
   xlnx,name = "psu_fpd_slcr";
  };
  psu_smmu_reg: psu_smmu_reg@fd5f0000 {
   compatible = "xlnx,psu-smmu-reg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_smmu_reg";
   reg = <0x0 0xfd5f0000 0x0 0x10000>;
   xlnx,name = "psu_smmu_reg";
  };
  psu_cci_reg: psu_cci_reg@fd5e0000 {
   compatible = "xlnx,psu-cci-reg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_cci_reg";
   reg = <0x0 0xfd5e0000 0x0 0x10000>;
   xlnx,name = "psu_cci_reg";
  };
  psu_fpd_xmpu_cfg: psu_fpd_xmpu_cfg@fd5d0000 {
   compatible = "xlnx,psu-fpd-xmpu-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_xmpu_cfg";
   reg = <0x0 0xfd5d0000 0x0 0x10000>;
   xlnx,name = "psu_fpd_xmpu_cfg";
  };
  psu_apu: psu_apu@fd5c0000 {
   compatible = "xlnx,psu-apu-1.0";
   status = "okay";
   xlnx,ip-name = "psu_apu";
   reg = <0x0 0xfd5c0000 0x0 0x10000>;
   xlnx,name = "psu_apu";
  };
  psu_fpd_xmpu_sink: psu_fpd_xmpu_sink@fd4f0000 {
   compatible = "xlnx,psu-fpd-xmpu-sink-1.0";
   status = "okay";
   xlnx,ip-name = "psu_fpd_xmpu_sink";
   reg = <0x0 0xfd4f0000 0x0 0x10000>;
   xlnx,name = "psu_fpd_xmpu_sink";
  };
  psu_siou: psu_siou@fd3d0000 {
   compatible = "xlnx,psu-siou-1.0";
   status = "okay";
   xlnx,ip-name = "psu_siou";
   reg = <0x0 0xfd3d0000 0x0 0x10000>;
   xlnx,name = "psu_siou";
  };
  psu_afi_5: psu_afi@fd3b0000 {
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd3b0000 0x0 0x10000>;
   xlnx,name = "psu_afi_5";
  };
  psu_afi_4: psu_afi@fd3a0000 {
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd3a0000 0x0 0x10000>;
   xlnx,name = "psu_afi_4";
  };
  psu_afi_3: psu_afi@fd390000 {
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd390000 0x0 0x10000>;
   xlnx,name = "psu_afi_3";
  };
  psu_afi_2: psu_afi@fd380000 {
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd380000 0x0 0x10000>;
   xlnx,name = "psu_afi_2";
  };
  psu_afi_1: psu_afi@fd370000 {
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd370000 0x0 0x10000>;
   xlnx,name = "psu_afi_1";
  };
  psu_afi_0: psu_afi@fd360000 {
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xfd360000 0x0 0x10000>;
   xlnx,name = "psu_afi_0";
  };
  psu_crf_apb: psu_crf_apb@fd1a0000 {
   compatible = "xlnx,psu-crf-apb-1.0";
   status = "okay";
   xlnx,ip-name = "psu_crf_apb";
   reg = <0x0 0xfd1a0000 0x0 0x140000>;
   xlnx,name = "psu_crf_apb";
  };
  psu_ddr_qos_ctrl: psu_ddr_qos_ctrl@fd090000 {
   compatible = "xlnx,psu-ddr-qos-ctrl-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_qos_ctrl";
   reg = <0x0 0xfd090000 0x0 0x10000>;
   xlnx,name = "psu_ddr_qos_ctrl";
  };
  psu_ddr_phy: psu_ddr_phy@fd080000 {
   compatible = "xlnx,psu-ddr-phy-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_phy";
   reg = <0x0 0xfd080000 0x0 0x10000>;
   xlnx,name = "psu_ddr_phy";
  };
  psu_ddr_xmpu5_cfg: psu_ddr_xmpu5_cfg@fd050000 {
   compatible = "xlnx,psu-ddr-xmpu5-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu5_cfg";
   reg = <0x0 0xfd050000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu5_cfg";
  };
  psu_ddr_xmpu4_cfg: psu_ddr_xmpu4_cfg@fd040000 {
   compatible = "xlnx,psu-ddr-xmpu4-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu4_cfg";
   reg = <0x0 0xfd040000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu4_cfg";
  };
  psu_ddr_xmpu3_cfg: psu_ddr_xmpu3_cfg@fd030000 {
   compatible = "xlnx,psu-ddr-xmpu3-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu3_cfg";
   reg = <0x0 0xfd030000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu3_cfg";
  };
  psu_ddr_xmpu2_cfg: psu_ddr_xmpu2_cfg@fd020000 {
   compatible = "xlnx,psu-ddr-xmpu2-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu2_cfg";
   reg = <0x0 0xfd020000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu2_cfg";
  };
  psu_ddr_xmpu1_cfg: psu_ddr_xmpu1_cfg@fd010000 {
   compatible = "xlnx,psu-ddr-xmpu1-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu1_cfg";
   reg = <0x0 0xfd010000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu1_cfg";
  };
  psu_ddr_xmpu0_cfg: psu_ddr_xmpu0_cfg@fd000000 {
   compatible = "xlnx,psu-ddr-xmpu0-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr_xmpu0_cfg";
   reg = <0x0 0xfd000000 0x0 0x10000>;
   xlnx,name = "psu_ddr_xmpu0_cfg";
  };
  psu_ocm_xmpu_cfg: psu_ocm_xmpu_cfg@ffa70000 {
   compatible = "xlnx,psu-ocm-xmpu-cfg-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ocm_xmpu_cfg";
   reg = <0x0 0xffa70000 0x0 0x10000>;
   xlnx,name = "psu_ocm_xmpu_cfg";
  };
  psu_lpd_xppu_sink: psu_lpd_xppu_sink@ff9c0000 {
   compatible = "xlnx,psu-lpd-xppu-sink-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_xppu_sink";
   reg = <0x0 0xff9c0000 0x0 0x10000>;
   xlnx,name = "psu_lpd_xppu_sink";
  };
  psu_afi_6: psu_afi@ff9b0000 {
   compatible = "xlnx,psu-afi-1.0";
   status = "okay";
   xlnx,ip-name = "psu_afi";
   reg = <0x0 0xff9b0000 0x0 0x10000>;
   xlnx,name = "psu_afi_6";
  };
  psu_rpu: psu_rpu@ff9a0000 {
   xlnx,is-cache-coherent = <0>;
   compatible = "xlnx,psu-rpu-1.0";
   status = "okay";
   xlnx,ip-name = "psu_rpu";
   reg = <0x0 0xff9a0000 0x0 0x10000>;
   xlnx,name = "psu_rpu";
  };
  psu_crl_apb: psu_crl_apb@ff5e0000 {
   compatible = "xlnx,psu-crl-apb-1.0";
   status = "okay";
   xlnx,ip-name = "psu_crl_apb";
   reg = <0x0 0xff5e0000 0x0 0x280000>;
   xlnx,name = "psu_crl_apb";
  };
  psu_lpd_slcr_secure: psu_lpd_slcr_secure@ff4b0000 {
   compatible = "xlnx,psu-lpd-slcr-secure-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_slcr_secure";
   reg = <0x0 0xff4b0000 0x0 0x30000>;
   xlnx,name = "psu_lpd_slcr_secure";
  };
  psu_lpd_slcr: psu_lpd_slcr@ff410000 {
   compatible = "xlnx,psu-lpd-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_lpd_slcr";
   reg = <0x0 0xff410000 0x0 0xa0000>;
   xlnx,name = "psu_lpd_slcr";
  };
  psu_ctrl_ipi: PERIPHERAL@ff380000 {
   compatible = "xlnx,PERIPHERAL-1.0";
   reg = <0x0 0xff380000 0x0 0x80000>;
  };
  psu_message_buffers: PERIPHERAL@ff990000 {
   compatible = "xlnx,PERIPHERAL-1.0";
   reg = <0x0 0xff990000 0x0 0x10000>;
  };
  psu_iou_scntrs: psu_iou_scntrs@ff260000 {
   compatible = "xlnx,psu-iou-scntrs-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iou_scntrs";
   reg = <0x0 0xff260000 0x0 0x10000>;
   xlnx,name = "psu_iou_scntrs";
  };
  psu_iou_scntr: psu_iou_scntr@ff250000 {
   compatible = "xlnx,psu-iou-scntr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iou_scntr";
   reg = <0x0 0xff250000 0x0 0x10000>;
   xlnx,name = "psu_iou_scntr";
  };
  psu_iousecure_slcr: psu_iousecure_slcr@ff240000 {
   compatible = "xlnx,psu-iousecure-slcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iousecure_slcr";
   reg = <0x0 0xff240000 0x0 0x10000>;
   xlnx,name = "psu_iousecure_slcr";
  };
  psu_iouslcr_0: psu_iouslcr@ff180000 {
   compatible = "xlnx,psu-iouslcr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_iouslcr";
   reg = <0x0 0xff180000 0x0 0xc0000>;
   xlnx,name = "psu_iouslcr_0";
  };
  psu_r5_ddr_0: psu_ddr@100000 {
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   reg = <0x0 0x100000 0x0 0x7fe00000>;
   xlnx,name = "psu_r5_ddr_0";
  };
  psu_ddr_0: psu_ddr@0 {
   xlnx,ddrc-brc-mapping = <0>;
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   xlnx,ddrc-video-buffer-size = <0>;
   xlnx,ddrc-act-freq-hz = <1049989501>;
   reg = <0x0 0x0 0x0 0x7ff00000 0x0 0x7ff00000 0x0 0x100000>;
   xlnx,ddrc-ddr4-addr-mapping = <1>;
   xlnx,name = "psu_ddr_0";
  };
  psu_ddr_1: psu_ddr@800000000 {
   compatible = "xlnx,psu-ddr-1.0";
   status = "okay";
   xlnx,ip-name = "psu_ddr";
   reg = <0x00000008 0x00000000 0x0 0x80000000>;
   xlnx,name = "psu_ddr_1";
  };
  psu_qspi_linear_0: psu_qspi_linear@c0000000 {
   reg = <0x0 0xc0000000 0x0 0x20000000>;
  };
 };
 &psu_pmu_0 {
  xlnx,psu-ep = <1>;
  xlnx,addr-tag-bits = <0>;
  xlnx,number-of-wr-addr-brk = <1>;
  xlnx,dynamic-bus-sizing = <0>;
  d-cache-highaddr = <0x3fffffff>;
  xlnx,ip-name = "psu_pmu";
  xlnx,use-interrupt = <1>;
  xlnx,dcache-force-tag-lutram = <0>;
  xlnx,pc-width = <32>;
  xlnx,async-interrupt = <1>;
  xlnx,interrupt-is-edge = <0>;
  xlnx,use-mmu = <0>;
  xlnx,icache-victims = <0>;
  xlnx,use-reorder-instr = <1>;
  xlnx,dcache-always-used = <0>;
  xlnx,ill-opcode-exception = <1>;
  xlnx,use-div = <0>;
  xlnx,psu-device = "PSSa";
  i-cache-baseaddr = <0x0>;
  xlnx,trace = <1>;
  xlnx,use-config-reset = <0>;
  xlnx,pvr = <0>;
  xlnx,dcache-byte-size = <8192>;
  xlnx,is-cache-coherent = <0>;
  xlnx,data-size = <32>;
  xlnx,fault-tolerant = <1>;
  xlnx,mmu-zones = <16>;
  d-cache-line-size = <16>;
  xlnx,enable-discrete-ports = <1>;
  xlnx,mmu-privileged-instr = <0>;
  xlnx,sco = <0>;
  clock-frequency = <0xaba9500>;
  xlnx,use-ext-brk = <0>;
  xlnx,debug-enabled = <1>;
  xlnx,endianness = <1>;
  i-cache-line-size = <16>;
  xlnx,fsl-exception = <0>;
  xlnx,use-extended-fsl-instr = <0>;
  xlnx,reset-msr = <0x0>;
  xlnx,branch-target-cache-size = <0>;
  xlnx,dcache-use-writeback = <0>;
  xlnx,div-zero-exception = <0>;
  xlnx,mmu-tlb-access = <3>;
  xlnx,cache-byte-size = <8192>;
  bus-handle = <&amba>;
  xlnx,pvr-user2 = <0x0>;
  xlnx,opcode-0x0-illegal = <1>;
  xlnx,base-vectors = <0xffd00000>;
  xlnx,ecc-use-ce-exception = <0>;
  xlnx,icache-line-len = <4>;
  microblaze_ddr_reserve_sa = <0x7ff00000>;
  xlnx,use-dcache = <0>;
  xlnx,use-barrel = <1>;
  xlnx,allow-dcache-wr = <1>;
  microblaze_ddr_reserve_ea = <0x7fffffff>;
  i-cache-highaddr = <0x3fffffff>;
  xlnx,allow-icache-wr = <1>;
  xlnx,fpu-exception = <0>;
  xlnx,g-use-exceptions = <1>;
  xlnx,dcache-line-len = <4>;
  xlnx,icache-streams = <0>;
  xlnx,pss-ref-clk-freq = <33333000>;
  i-cache-size = <8192>;
  xlnx,use-stack-protection = <1>;
  xlnx,use-hw-mul = <0>;
  xlnx,pmu-board-interface = "custom";
  xlnx,use-fpu = <0>;
  xlnx,edge-is-positive = <0>;
  d-cache-size = <8192>;
  xlnx,use-pcmp-instr = <1>;
  xlnx,use-icache = <0>;
  xlnx,dcache-addr-tag = <0>;
  d-cache-baseaddr = <0x0>;
  xlnx,number-of-rd-addr-brk = <1>;
  xlnx,ddr-reserve-sa = <0x7ff00000>;
  xlnx,lockstep-slave = <0>;
  xlnx,ddr-reserve-ea = <0x7fffffff>;
  xlnx,use-ext-nm-brk = <0>;
  xlnx,icache-always-used = <0>;
  xlnx,lockstep-select = <0>;
  xlnx,mmu-dtlb-size = <4>;
  xlnx,fsl-links = <0>;
  xlnx,dcache-data-width = <0>;
  xlnx,dcache-victims = <0>;
  xlnx,icache-force-tag-lutram = <0>;
  xlnx,use-branch-target-cache = <0>;
  xlnx,unaligned-exceptions = <1>;
  xlnx,freq = <180000000>;
  xlnx,number-of-pc-brk = <1>;
  xlnx,mmu-itlb-size = <2>;
  xlnx,use-msr-instr = <1>;
  xlnx,icache-data-width = <0>;
 };
 &coresight_0 {
  status = "okay";
  xlnx,ip-name = "psu_coresight_0";
  xlnx,name = "psu_coresight_0";
 };
 &gic_a53 {
  status = "okay";
  xlnx,ip-name = "psu_acpu_gic";
  xlnx,name = "psu_acpu_gic";
 };
 &gic_r5 {
  status = "okay";
  xlnx,ip-name = "psu_rcpu_gic";
  xlnx,name = "psu_rcpu_gic";
 };
 &ocm {
  status = "okay";
  xlnx,ip-name = "psu_ocm";
  xlnx,name = "psu_ocm";
 };
 &csuwdt_0 {
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <100000000>;
  xlnx,name = "psu_csu_wdt";
 };
 &csudma_0 {
  status = "okay";
  xlnx,ip-name = "psu_csudma";
  xlnx,dma-type = <0>;
  xlnx,name = "psu_csudma";
 };
 &smmu {
  status = "okay";
  xlnx,ip-name = "psu_smmu_gpv";
  xlnx,name = "psu_smmu_gpv";
 };
 &fpd_dma_chan8 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_7";
 };
 &fpd_dma_chan7 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_6";
 };
 &fpd_dma_chan6 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_5";
 };
 &fpd_dma_chan5 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_4";
 };
 &fpd_dma_chan4 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_3";
 };
 &fpd_dma_chan3 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_2";
 };
 &fpd_dma_chan2 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_1";
 };
 &fpd_dma_chan1 {
  status = "okay";
  xlnx,ip-name = "psu_gdma";
  xlnx,dma-mode = <0>;
  xlnx,dma-type = <0>;
  xlnx,name = "psu_gdma_0";
 };
 &perf_monitor_cci {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_5";
 };
 &psgtr {
  status = "okay";
  xlnx,ip-name = "psu_serdes";
  xlnx,name = "psu_serdes";
 };
 &sata {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,tz-nonsecure-sata0 = <0>;
  xlnx,ip-name = "psu_sata";
  xlnx,sata-board-interface = "custom";
  xlnx,tz-nonsecure-sata1 = <0>;
  xlnx,name = "psu_sata";
 };
 &perf_monitor_ddr {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <10>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <6>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_0";
 };
 &lpd_dma_chan8 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_7";
 };
 &lpd_dma_chan7 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_6";
 };
 &lpd_dma_chan6 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_5";
 };
 &lpd_dma_chan5 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_4";
 };
 &lpd_dma_chan4 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_3";
 };
 &lpd_dma_chan3 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_2";
 };
 &lpd_dma_chan2 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_1";
 };
 &lpd_dma_chan1 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_adma";
  xlnx,dma-mode = <1>;
  xlnx,dma-type = <1>;
  xlnx,name = "psu_adma_0";
 };
 &rtc {
  status = "okay";
  xlnx,ip-name = "psu_rtc";
  xlnx,name = "psu_rtc";
 };
 &xilinx_ams {
  status = "okay";
  xlnx,clock-freq = <49>;
  xlnx,ip-name = "psu_ams";
  xlnx,name = "psu_ams";
 };
 &perf_monitor_lpd {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_2";
 };
 &perf_monitor_ocm {
  xlnx,global-count-width = <32>;
  xlnx,enable-32bit-filter-id = <1>;
  xlnx,enable-event-log = <0>;
  xlnx,enable-profile = <0>;
  xlnx,metric-count-scale = <1>;
  xlnx,ip-name = "psu_apm";
  xlnx,metrics-sample-count-width = <32>;
  xlnx,fifo-axis-tid-width = <1>;
  xlnx,num-of-counters = <3>;
  xlnx,have-sampled-metric-cnt = <1>;
  xlnx,enable-advanced = <1>;
  xlnx,can-clk-freq-hz = <50000000>;
  xlnx,enable-trace = <0>;
  xlnx,enable-event-count = <1>;
  status = "okay";
  xlnx,fifo-axis-tdata-width = <56>;
  xlnx,num-monitor-slots = <1>;
  xlnx,fifo-axis-depth = <32>;
  xlnx,name = "psu_apm_1";
 };
 &usb0 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,usb-polarity = <0>;
  xlnx,ip-name = "psu_usb";
  xlnx,usb-reset-mode = <0>;
  xlnx,usb-board-interface = "custom";
  xlnx,tz-nonsecure = <1>;
  xlnx,name = "psu_usb_0";
 };
 &dwc3_0 {
  xlnx,is-cache-coherent = <0>;
  status = "okay";
  xlnx,ip-name = "psu_usb_xhci";
  xlnx,enable-superspeed = <1>;
  xlnx,usb-board-interface = "custom";
  xlnx,name = "psu_usb_xhci_0";
 };
 &lpd_xppu {
  status = "okay";
  xlnx,ip-name = "psu_lpd_xppu";
  xlnx,name = "psu_lpd_xppu";
 };
 &ipi0 {
  xlnx,cpu-name = "APU";
  xlnx,buffer-base = <0xff990400>;
  xlnx,base-address = <0xff300000>;
  status = "okay";
  xlnx,buffer-index = <2>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <67>;
  xlnx,bit-position = <0>;
  xlnx,name = "psu_ipi_0";
  psu_ipi_0_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9904a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990480>;
  };
  psu_ipi_0_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990420>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990400>;
  };
  psu_ipi_0_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990460>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990440>;
  };
  psu_ipi_0_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9905e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9905c0>;
  };
  psu_ipi_0_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff9904e0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff9904c0>;
  };
  psu_ipi_0_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990520>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990500>;
  };
 };
 &ipi1 {
  xlnx,cpu-name = "RPU0";
  xlnx,buffer-base = <0xff990000>;
  xlnx,base-address = <0xff310000>;
  status = "okay";
  xlnx,buffer-index = <0>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <65>;
  xlnx,bit-position = <8>;
  xlnx,name = "psu_ipi_1";
  psu_ipi_1_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9900a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990080>;
  };
  psu_ipi_1_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990020>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990000>;
  };
  psu_ipi_1_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990060>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990040>;
  };
  psu_ipi_1_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9901e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9901c0>;
  };
  psu_ipi_1_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff9900e0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff9900c0>;
  };
  psu_ipi_1_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990120>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990100>;
  };
 };
 &ipi2 {
  xlnx,cpu-name = "RPU1";
  xlnx,buffer-base = <0xff990200>;
  xlnx,base-address = <0xff320000>;
  status = "okay";
  xlnx,buffer-index = <1>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <66>;
  xlnx,bit-position = <9>;
  xlnx,name = "psu_ipi_2";
  psu_ipi_2_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9902a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990280>;
  };
  psu_ipi_2_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990220>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990200>;
  };
  psu_ipi_2_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990260>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990240>;
  };
  psu_ipi_2_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9903e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9903c0>;
  };
  psu_ipi_2_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff9902e0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff9902c0>;
  };
  psu_ipi_2_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990320>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990300>;
  };
 };
 &ipi3 {
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff330000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <16>;
  xlnx,name = "psu_ipi_3";
  psu_ipi_3_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_3_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_3_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_3_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_3_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff990ee0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff990ec0>;
  };
  psu_ipi_3_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990f20>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990f00>;
  };
 };
 &ipi4 {
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff331000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <17>;
  xlnx,name = "psu_ipi_4";
  psu_ipi_4_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_4_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_4_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_4_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_4_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff990ee0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff990ec0>;
  };
  psu_ipi_4_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990f20>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990f00>;
  };
 };
 &ipi5 {
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff332000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <18>;
  xlnx,name = "psu_ipi_5";
  psu_ipi_5_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_5_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_5_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_5_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_5_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff990ee0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff990ec0>;
  };
  psu_ipi_5_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990f20>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990f00>;
  };
 };
 &ipi6 {
  xlnx,cpu-name = "PMU";
  xlnx,buffer-base = <0xff990e00>;
  xlnx,base-address = <0xff333000>;
  status = "okay";
  xlnx,buffer-index = <7>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <0>;
  xlnx,bit-position = <19>;
  xlnx,name = "psu_ipi_6";
  psu_ipi_6_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff990ea0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990e80>;
  };
  psu_ipi_6_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990e20>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990e00>;
  };
  psu_ipi_6_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990e60>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990e40>;
  };
  psu_ipi_6_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff990fe0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff990fc0>;
  };
  psu_ipi_6_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff990ee0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff990ec0>;
  };
  psu_ipi_6_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990f20>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990f00>;
  };
 };
 &ipi7 {
  xlnx,cpu-name = "APU";
  xlnx,buffer-base = <0xff990600>;
  xlnx,base-address = <0xff340000>;
  status = "okay";
  xlnx,buffer-index = <3>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <61>;
  xlnx,bit-position = <24>;
  xlnx,name = "psu_ipi_7";
  psu_ipi_7_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9906a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990680>;
  };
  psu_ipi_7_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990620>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990600>;
  };
  psu_ipi_7_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990660>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990640>;
  };
  psu_ipi_7_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9907e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9907c0>;
  };
  psu_ipi_7_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9907e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9907c0>;
  };
  psu_ipi_7_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9907e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9907c0>;
  };
  psu_ipi_7_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9907e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9907c0>;
  };
  psu_ipi_7_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff9906e0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff9906c0>;
  };
  psu_ipi_7_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990720>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990700>;
  };
 };
 &ipi8 {
  xlnx,cpu-name = "APU";
  xlnx,buffer-base = <0xff990800>;
  xlnx,base-address = <0xff350000>;
  status = "okay";
  xlnx,buffer-index = <4>;
  xlnx,ip-name = "psu_ipi";
  xlnx,ipi-target-count = <9>;
  xlnx,int-id = <62>;
  xlnx,bit-position = <25>;
  xlnx,name = "psu_ipi_8";
  psu_ipi_8_0: child@0 {
   xlnx,ipi-bitmask = <1>;
   xlnx,ipi-rsp-msg-buf = <0xff9908a0>;
   xlnx,ipi-id = <0>;
   xlnx,ipi-buf-index = <2>;
   xlnx,ipi-req-msg-buf = <0xff990880>;
  };
  psu_ipi_8_1: child@1 {
   xlnx,ipi-bitmask = <256>;
   xlnx,ipi-rsp-msg-buf = <0xff990820>;
   xlnx,ipi-id = <1>;
   xlnx,ipi-buf-index = <0>;
   xlnx,ipi-req-msg-buf = <0xff990800>;
  };
  psu_ipi_8_2: child@2 {
   xlnx,ipi-bitmask = <512>;
   xlnx,ipi-rsp-msg-buf = <0xff990860>;
   xlnx,ipi-id = <2>;
   xlnx,ipi-buf-index = <1>;
   xlnx,ipi-req-msg-buf = <0xff990840>;
  };
  psu_ipi_8_3: child@3 {
   xlnx,ipi-bitmask = <65536>;
   xlnx,ipi-rsp-msg-buf = <0xff9909e0>;
   xlnx,ipi-id = <3>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9909c0>;
  };
  psu_ipi_8_4: child@4 {
   xlnx,ipi-bitmask = <131072>;
   xlnx,ipi-rsp-msg-buf = <0xff9909e0>;
   xlnx,ipi-id = <4>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9909c0>;
  };
  psu_ipi_8_5: child@5 {
   xlnx,ipi-bitmask = <262144>;
   xlnx,ipi-rsp-msg-buf = <0xff9909e0>;
   xlnx,ipi-id = <5>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9909c0>;
  };
  psu_ipi_8_6: child@6 {
   xlnx,ipi-bitmask = <524288>;
   xlnx,ipi-rsp-msg-buf = <0xff9909e0>;
   xlnx,ipi-id = <6>;
   xlnx,ipi-buf-index = <7>;
   xlnx,ipi-req-msg-buf = <0xff9909c0>;
  };
  psu_ipi_8_7: child@7 {
   xlnx,ipi-bitmask = <16777216>;
   xlnx,ipi-rsp-msg-buf = <0xff9908e0>;
   xlnx,ipi-id = <7>;
   xlnx,ipi-buf-index = <3>;
   xlnx,ipi-req-msg-buf = <0xff9908c0>;
  };
  psu_ipi_8_8: child@8 {
   xlnx,ipi-bitmask = <33554432>;
   xlnx,ipi-rsp-msg-buf = <0xff990920>;
   xlnx,ipi-id = <8>;
   xlnx,ipi-buf-index = <4>;
   xlnx,ipi-req-msg-buf = <0xff990900>;
  };
 };
 &mc {
  xlnx,bank-addr-bits = <0x2>;
  xlnx,ddrc-parity = <0>;
  xlnx,addr-mapping = <0x0>;
  xlnx,has-ecc = <0>;
  xlnx,ddr-freq = <1049989501>;
  xlnx,row-addr-bits = <0x10>;
  xlnx,ddrc-low-power-auto-self-refresh = <0>;
  xlnx,ip-name = "psu_ddrc";
  xlnx,ddrc-2nd-clock = <0>;
  xlnx,brc-mapping = <0x0>;
  xlnx,ddrc-address-copy = <0>;
  xlnx,ddrc-data-mask-and-dbi = <7>;
  xlnx,ddrc-fine-granularity-refresh-mode = <0>;
  xlnx,ddrc-memory-type = <4>;
  xlnx,col-addr-bits = <0xa>;
  xlnx,ddrc-self-refresh-abort = <0>;
  xlnx,ddrc-max-operating-temparature = <0>;
  status = "okay";
  xlnx,ddrc-address-mirroring = <0>;
  xlnx,ddrc-clk-freq-hz = <524994750>;
  xlnx,qos-enable = <0>;
  xlnx,ddrc-temp-controlled-refresh = <0>;
  xlnx,bg-addr-bits = <0x1>;
  xlnx,ddrc-power-down-enable = <0>;
  xlnx,video-buf-size = <0x0>;
  xlnx,ddrc-memory-address-map = <0>;
  xlnx,name = "psu_ddrc_0";
  xlnx,dddrc-ecc = <0>;
  xlnx,ddrc-clock-stop = <0>;
  xlnx,ddrc-dynamic-ddr-config-enabled = <1>;
 };
 &sdhci1 {
  xlnx,sd-board-interface = "custom";
  xlnx,is-cache-coherent = <0>;
  xlnx,clk-50-ddr-otap-dly = <0x4>;
  xlnx,clk-50-sdr-itap-dly = <0x15>;
  xlnx,has-emio = <0>;
  clock-frequency = <0xb2cfe8b>;
  xlnx,tz-nonsecure = <1>;
  xlnx,clk-100-sdr-otap-dly = <0x3>;
  xlnx,mio-bank = <0x1>;
  xlnx,ip-name = "psu_sd";
  xlnx,bus-width = <8>;
  xlnx,card-detect = <1>;
  xlnx,has-wp = <0>;
  xlnx,has-cd = <1>;
  xlnx,slot-type = <3>;
  xlnx,clk-50-sdr-otap-dly = <0x5>;
  xlnx,clk-50-ddr-itap-dly = <0x3d>;
  xlnx,has-power = <0>;
  status = "okay";
  xlnx,clk-200-sdr-otap-dly = <0x3>;
  xlnx,sdio-clk-freq-hz = <187498123>;
  xlnx,write-protect = <0>;
  xlnx,name = "psu_sd_1";
 };
 &lpd_watchdog {
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <99999001>;
  xlnx,swdt-board-interface = "custom";
  xlnx,name = "psu_wdt_0";
 };
 &watchdog0 {
  status = "okay";
  xlnx,ip-name = "psu_wdt";
  xlnx,wdt-clk-freq-hz = <99999001>;
  xlnx,swdt-board-interface = "custom";
  xlnx,name = "psu_wdt_1";
 };
 &ttc3 {
  xlnx,ttc-board-interface = "custom";
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_3";
 };
 &ttc2 {
  xlnx,ttc-board-interface = "custom";
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_2";
 };
 &ttc1 {
  xlnx,ttc-board-interface = "custom";
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_1";
 };
 &ttc0 {
  xlnx,ttc-board-interface = "custom";
  xlnx,ttc-clk2-freq-hz = <100000000>;
  status = "okay";
  xlnx,clock-freq = <100000000>;
  xlnx,ip-name = "psu_ttc";
  xlnx,ttc-clk0-freq-hz = <100000000>;
  xlnx,ttc-clk1-freq-hz = <100000000>;
  xlnx,name = "psu_ttc_0";
 };
 &qspi {
  xlnx,is-cache-coherent = <0>;
  xlnx,qspi-fbclk = <0>;
  num-cs = <2>;
  xlnx,tz-nonsecure = <1>;
  xlnx,qspi-clk-freq-hz = <124998749>;
  xlnx,bus-width = <2>;
  xlnx,ip-name = "psu_qspi";
  xlnx,qspi-board-interface = "custom";
  spi-rx-bus-width = <4>;
  xlnx,connection-mode = <2>;
  spi-tx-bus-width = <4>;
  status = "okay";
  xlnx,clock-freq = <124998749>;
  xlnx,fb-clk = <1>;
  xlnx,qspi-mode = <2>;
  xlnx,name = "psu_qspi_0";
  xlnx,qspi-bus-width = <2>;
  is-dual = <1>;
 };
 &gem3 {
  xlnx,is-cache-coherent = <0>;
  xlnx,has-mdio = <50000000>;
  xlnx,gem-board-interface = "custom";
  phy-mode = "rgmii-id";
  xlnx,tz-nonsecure = <1>;
  xlnx,enet-slcr-1000mbps-div0 = <12>;
  xlnx,enet-slcr-10mbps-div0 = <60>;
  xlnx,enet-slcr-1000mbps-div1 = <1>;
  xlnx,enet-slcr-10mbps-div1 = <10>;
  xlnx,enet-tsu-clk-freq-hz = <249997498>;
  xlnx,ip-name = "psu_ethernet";
  xlnx,eth-mode = <1>;
  xlnx,enet-reset = <50000000>;
  xlnx,enet-clk-freq-hz = <124998749>;
  xlnx,enet-slcr-100mbps-div0 = <60>;
  xlnx,ptp-enet-clock = <0x0>;
  status = "okay";
  xlnx,enet-slcr-100mbps-div1 = <1>;
  xlnx,name = "psu_ethernet_3";
 };
 &gpio {
  xlnx,gpio-board-interface = "custom";
  xlnx,mio-gpio-mask = <0x5600>;
  status = "okay";
  gpio-mask-high = <0>;
  xlnx,emio-gpio-width = <32>;
  xlnx,ip-name = "psu_gpio";
  gpio-mask-low = <22016>;
  emio-gpio-width = <0x20>;
  xlnx,name = "psu_gpio_0";
 };
 &i2c1 {
  xlnx,i2c-reset = <0>;
  xlnx,has-interrupt = <50000000>;
  status = "okay";
  xlnx,clock-freq = <99999001>;
  xlnx,i2c-clk-freq-hz = <99999001>;
  xlnx,ip-name = "psu_i2c";
  xlnx,iic-board-interface = "custom";
  xlnx,name = "psu_i2c_1";
 };
 &i2c0 {
  xlnx,i2c-reset = <0>;
  xlnx,has-interrupt = <50000000>;
  status = "okay";
  xlnx,clock-freq = <99999001>;
  xlnx,i2c-clk-freq-hz = <99999001>;
  xlnx,ip-name = "psu_i2c";
  xlnx,iic-board-interface = "custom";
  xlnx,name = "psu_i2c_0";
 };
 &uart0 {
  status = "okay";
  xlnx,clock-freq = <99999001>;
  u-boot,dm-pre-reloc;
  xlnx,uart-board-interface = "custom";
  xlnx,has-modem = <0>;
  xlnx,ip-name = "psu_uart";
  xlnx,baudrate = <115200>;
  cts-override;
  port-number = <0>;
  xlnx,uart-clk-freq-hz = <99999001>;
  xlnx,name = "psu_uart_0";
 };
 &ams_ps {
  status = "okay";
 };
 &ams_pl {
  status = "okay";
 };
 &cpu_opp_table {
  /delete-node/ opp01;
  /delete-node/ opp02;
  /delete-node/ opp03;
  /delete-node/ opp00;
  opp-1200000000 {
   opp-hz = /bits/ 64 <1200000000>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-600000000 {
   opp-hz = /bits/ 64 <600000000>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-400000000 {
   opp-hz = /bits/ 64 <400000000>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
  opp-300000000 {
   opp-hz = /bits/ 64 <300000000>;
   clock-latency-ns = <500000>;
   opp-microvolt = <1000000>;
  };
 };
 &psu_cortexr5_0 {
  xlnx,psu-ep = <1>;
  xlnx,is-cache-coherent = <0>;
  xlnx,tz-nonsecure = <0>;
  xlnx,ip-name = "psu_cortexr5";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <499994995>;
  xlnx,cpu-clk-freq-hz = <499994995>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33333000>;
  access-val = <0xff>;
  xlnx,psu-device = "PS8a";
  bus-handle = <&amba>;
  xlnx,timestamp-clk-freq = <99999001>;
 };
 &psu_cortexr5_1 {
  xlnx,psu-ep = <1>;
  xlnx,is-cache-coherent = <0>;
  xlnx,tz-nonsecure = <0>;
  xlnx,ip-name = "psu_cortexr5";
  xlnx,cpu-1x-clk-freq-hz = <0>;
  cpu-frequency = <499994995>;
  xlnx,cpu-clk-freq-hz = <499994995>;
  xlnx,psu-silicon-version = <3>;
  xlnx,pss-ref-clk-freq = <33333000>;
  access-val = <0xff>;
  xlnx,psu-device = "PS8a";
  bus-handle = <&amba>;
  xlnx,timestamp-clk-freq = <99999001>;
 };
 &zynqmp_reset {
  status = "okay";
 };
 &pinctrl0 {
  status = "okay";
 };
# 7 "/tmp/tmpe9hemm83" 2
/ {
 board = "zcu208";
 device_id = "xczu48dr";
 slrcount = <1>;
 family = "ZynqMP";
 speed_grade = "2";
 ADC_DDR_DMA_ddr4_adc_memory: memory@1000000000 {
  compatible = "xlnx,ddr4-2.2";
  xlnx,ip-name = "ddr4";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x00000010 0x00000000 0x00000001 0x00000000>;
 };
 DAC_DDR_DMA_ddr4_0_memory: memory@400000000 {
  compatible = "xlnx,ddr4-2.2";
  xlnx,ip-name = "ddr4";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x00000004 0x00000000 0x00000001 0x00000000>;
 };
 psu_ocm_ram_0_memory: memory@FFFC0000 {
  compatible = "xlnx,psu-ocm-ram-0-1.0" , "mmio-sram";
  xlnx,ip-name = "psu_ocm_ram_0";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0xFFFC0000 0x0 0x40000>;
 };
 psu_r5_ddr_0_memory: memory@100000 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0x100000 0x0 0x7FEFFFFF>;
 };
 psu_ddr_0_memory: memory@0 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0x0 0x0 0x7FF00000>, <0x0 0x7FF00000 0x0 0x100000>;
 };
 psu_ddr_1_memory: memory@800000000 {
  compatible = "xlnx,psu-ddr-1.0";
  xlnx,ip-name = "psu_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x00000008 0x00000000 0x0 0x80000000>;
 };
 psu_qspi_linear_0_memory: memory@c0000000 {
  compatible = "xlnx,psu-qspi-linear-1.0-memory";
  xlnx,ip-name = "psu_qspi_linear";
  device_type = "memory";
  memory_type = "linear_flash";
  reg = <0x0 0xc0000000 0x0 0x20000000>;
 };
 chosen {
  bootargs = "earlycon console=ttyPS0,115200 clk_ignore_unused init_fatal_sh=1";
  stdout-path = "serial0:115200n8";
 };
 aliases {
  serial0 = &uart0;
  spi0 = &qspi;
  serial1 = &coresight_0;
  i2c0 = &i2c1;
  i2c1 = &i2c0;
  ethernet0 = &gem3;
 };
 cpus_a53: cpus-a53@0 {
  compatible = "cpus,cluster";
  address-map = <0x0 0xf0000000 &amba 0x0 0xf0000000 0x0 0x10000000>,
         <0x0 0xf9000000 &amba_apu 0x0 0xf9000000 0x0 0x80000>,
         <0x0 0x0 &zynqmp_reset 0x0 0x0 0x0 0x0>,
         <0x0 0x0 &pinctrl0 0x0 0x0 0x0 0x0>,
         <0x0 0xffa50800 &ams_ps 0x0 0xffa50800 0x0 0x400>,
         <0x0 0xffa50c00 &ams_pl 0x0 0xffa50c00 0x0 0x400>,
         <0x00000010 0x00000000 &ADC_DDR_DMA_ddr4_adc_memory 0x00000010 0x00000000 0x00000001 0x00000000>,
         <0x00000004 0x00000000 &DAC_DDR_DMA_ddr4_0_memory 0x00000004 0x00000000 0x00000001 0x00000000>,
         <0x0 0xFFFC0000 &psu_ocm_ram_0_memory 0x0 0xFFFC0000 0x0 0x40000>,
         <0x0 0xff300000 &ipi0 0x0 0xff300000 0x0 0x10000>,
         <0x0 0xff340000 &ipi7 0x0 0xff340000 0x0 0x10000>,
         <0x0 0xff350000 &ipi8 0x0 0xff350000 0x0 0x10000>,
         <0x0 0x0 &psu_ddr_0_memory 0x0 0x0 0x0 0x7FF00000>,
         <0x00000008 0x00000000 &psu_ddr_1_memory 0x00000008 0x00000000 0x0 0x80000000>,
         <0x0 0xa0000000 &DAC_DDR_DMA_axi_dma_0 0x0 0xa0000000 0x0 0x10000>,
         <0x0 0xa0202000 &PS_Subsystem_axi_gpio_dac 0x0 0xa0202000 0x0 0x1000>,
         <0x0 0xa0203000 &ADC_DDR_DMA_axi_dma_0 0x0 0xa0203000 0x0 0x1000>,
         <0x0 0xa0204000 &ADC_DDR_DMA_axis_inter_adc_xbar 0x0 0xa0204000 0x0 0x1000>,
         <0x0 0xa0205000 &PS_Subsystem_axi_gpio_spi_mux 0x0 0xa0205000 0x0 0x1000>,
         <0x0 0xa0240000 &PS_Subsystem_axi_gpio_adc 0x0 0xa0240000 0x0 0x1000>,
         <0x0 0xa0300000 &PS_Subsystem_axi_gpio_mts 0x0 0xa0300000 0x0 0x10000>,
         <0x0 0xa0310000 &ADC_DDR_DMA_tlast_gen_v1_0_0 0x0 0xa0310000 0x0 0x1000>,
         <0x0 0xb0000000 &ex_design_dac_source_i 0x0 0xb0000000 0x0 0x200000>,
         <0x0 0xb0200000 &ex_design_tdd_module_i 0x0 0xb0200000 0x0 0x10000>,
         <0x0 0xb0400000 &ex_design_adc_sink_i 0x0 0xb0400000 0x0 0x200000>,
         <0x0 0xb4b00000 &ex_design_rfip 0x0 0xb4b00000 0x0 0x40000>,
         <0x0 0xb4c00000 &clocking_block_clk_wiz_dac0 0x0 0xb4c00000 0x0 0x10000>,
         <0x0 0xb4c10000 &clocking_block_clk_wiz_dac1 0x0 0xb4c10000 0x0 0x10000>,
         <0x0 0xb4c20000 &clocking_block_clk_wiz_dac2 0x0 0xb4c20000 0x0 0x10000>,
         <0x0 0xb4c30000 &clocking_block_clk_wiz_dac3 0x0 0xb4c30000 0x0 0x10000>,
         <0x0 0xb4c40000 &clocking_block_clk_wiz_adc0 0x0 0xb4c40000 0x0 0x10000>,
         <0x0 0xb4c50000 &clocking_block_clk_wiz_adc1 0x0 0xb4c50000 0x0 0x10000>,
         <0x0 0xb4c60000 &clocking_block_clk_wiz_adc2 0x0 0xb4c60000 0x0 0x10000>,
         <0x0 0xb4c70000 &clocking_block_clk_wiz_adc3 0x0 0xb4c70000 0x0 0x10000>,
         <0x0 0xf9010000 &gic_a53 0x0 0xf9010000 0x0 0x70000>,
         <0x0 0xffa80000 &lpd_dma_chan1 0x0 0xffa80000 0x0 0x10000>,
         <0x0 0xffa90000 &lpd_dma_chan2 0x0 0xffa90000 0x0 0x10000>,
         <0x0 0xffaa0000 &lpd_dma_chan3 0x0 0xffaa0000 0x0 0x10000>,
         <0x0 0xffab0000 &lpd_dma_chan4 0x0 0xffab0000 0x0 0x10000>,
         <0x0 0xffac0000 &lpd_dma_chan5 0x0 0xffac0000 0x0 0x10000>,
         <0x0 0xffad0000 &lpd_dma_chan6 0x0 0xffad0000 0x0 0x10000>,
         <0x0 0xffae0000 &lpd_dma_chan7 0x0 0xffae0000 0x0 0x10000>,
         <0x0 0xffaf0000 &lpd_dma_chan8 0x0 0xffaf0000 0x0 0x10000>,
         <0x0 0xfd360000 &psu_afi_0 0x0 0xfd360000 0x0 0x10000>,
         <0x0 0xfd370000 &psu_afi_1 0x0 0xfd370000 0x0 0x10000>,
         <0x0 0xfd380000 &psu_afi_2 0x0 0xfd380000 0x0 0x10000>,
         <0x0 0xfd390000 &psu_afi_3 0x0 0xfd390000 0x0 0x10000>,
         <0x0 0xfd3a0000 &psu_afi_4 0x0 0xfd3a0000 0x0 0x10000>,
         <0x0 0xfd3b0000 &psu_afi_5 0x0 0xfd3b0000 0x0 0x10000>,
         <0x0 0xff9b0000 &psu_afi_6 0x0 0xff9b0000 0x0 0x10000>,
         <0x0 0xffa50000 &xilinx_ams 0x0 0xffa50000 0x0 0x10000>,
         <0x0 0xfd0b0000 &perf_monitor_ddr 0x0 0xfd0b0000 0x0 0x10000>,
         <0x0 0xffa00000 &perf_monitor_ocm 0x0 0xffa00000 0x0 0x10000>,
         <0x0 0xffa10000 &perf_monitor_lpd 0x0 0xffa10000 0x0 0x10000>,
         <0x0 0xfd490000 &perf_monitor_cci 0x0 0xfd490000 0x0 0x10000>,
         <0x0 0xfd5c0000 &psu_apu 0x0 0xfd5c0000 0x0 0x10000>,
         <0x0 0xfd6e0000 &psu_cci_gpv 0x0 0xfd6e0000 0x0 0x10000>,
         <0x0 0xfd5e0000 &psu_cci_reg 0x0 0xfd5e0000 0x0 0x10000>,
         <0x0 0xfe800000 &coresight_0 0x0 0xfe800000 0x0 0x800000>,
         <0x0 0xfd1a0000 &psu_crf_apb 0x0 0xfd1a0000 0x0 0x140000>,
         <0x0 0xff5e0000 &psu_crl_apb 0x0 0xff5e0000 0x0 0x280000>,
         <0x0 0xffca0000 &psu_csu_0 0x0 0xffca0000 0x0 0x10000>,
         <0x0 0xffc80000 &csudma_0 0x0 0xffc80000 0x0 0x20000>,
         <0x0 0xff380000 &psu_ctrl_ipi 0x0 0xff380000 0x0 0x80000>,
         <0x0 0xfd080000 &psu_ddr_phy 0x0 0xfd080000 0x0 0x10000>,
         <0x0 0xfd090000 &psu_ddr_qos_ctrl 0x0 0xfd090000 0x0 0x10000>,
         <0x0 0xfd000000 &psu_ddr_xmpu0_cfg 0x0 0xfd000000 0x0 0x10000>,
         <0x0 0xfd010000 &psu_ddr_xmpu1_cfg 0x0 0xfd010000 0x0 0x10000>,
         <0x0 0xfd020000 &psu_ddr_xmpu2_cfg 0x0 0xfd020000 0x0 0x10000>,
         <0x0 0xfd030000 &psu_ddr_xmpu3_cfg 0x0 0xfd030000 0x0 0x10000>,
         <0x0 0xfd040000 &psu_ddr_xmpu4_cfg 0x0 0xfd040000 0x0 0x10000>,
         <0x0 0xfd050000 &psu_ddr_xmpu5_cfg 0x0 0xfd050000 0x0 0x10000>,
         <0x0 0xfd070000 &mc 0x0 0xfd070000 0x0 0x1000>,
         <0x0 0xffcc0000 &psu_efuse 0x0 0xffcc0000 0x0 0x10000>,
         <0x0 0xff0e0000 &gem3 0x0 0xff0e0000 0x0 0x10000>,
         <0x0 0xfd700000 &psu_fpd_gpv 0x0 0xfd700000 0x0 0x100000>,
         <0x0 0xfd610000 &psu_fpd_slcr 0x0 0xfd610000 0x0 0x80000>,
         <0x0 0xfd690000 &psu_fpd_slcr_secure 0x0 0xfd690000 0x0 0x40000>,
         <0x0 0xfd5d0000 &psu_fpd_xmpu_cfg 0x0 0xfd5d0000 0x0 0x10000>,
         <0x0 0xfd4f0000 &psu_fpd_xmpu_sink 0x0 0xfd4f0000 0x0 0x10000>,
         <0x0 0xfd500000 &fpd_dma_chan1 0x0 0xfd500000 0x0 0x10000>,
         <0x0 0xfd510000 &fpd_dma_chan2 0x0 0xfd510000 0x0 0x10000>,
         <0x0 0xfd520000 &fpd_dma_chan3 0x0 0xfd520000 0x0 0x10000>,
         <0x0 0xfd530000 &fpd_dma_chan4 0x0 0xfd530000 0x0 0x10000>,
         <0x0 0xfd540000 &fpd_dma_chan5 0x0 0xfd540000 0x0 0x10000>,
         <0x0 0xfd550000 &fpd_dma_chan6 0x0 0xfd550000 0x0 0x10000>,
         <0x0 0xfd560000 &fpd_dma_chan7 0x0 0xfd560000 0x0 0x10000>,
         <0x0 0xfd570000 &fpd_dma_chan8 0x0 0xfd570000 0x0 0x10000>,
         <0x0 0xff0a0000 &gpio 0x0 0xff0a0000 0x0 0x10000>,
         <0x0 0xff020000 &i2c0 0x0 0xff020000 0x0 0x10000>,
         <0x0 0xff030000 &i2c1 0x0 0xff030000 0x0 0x10000>,
         <0x0 0xff250000 &psu_iou_scntr 0x0 0xff250000 0x0 0x10000>,
         <0x0 0xff260000 &psu_iou_scntrs 0x0 0xff260000 0x0 0x10000>,
         <0x0 0xff240000 &psu_iousecure_slcr 0x0 0xff240000 0x0 0x10000>,
         <0x0 0xff180000 &psu_iouslcr_0 0x0 0xff180000 0x0 0xc0000>,
         <0x0 0xff410000 &psu_lpd_slcr 0x0 0xff410000 0x0 0xa0000>,
         <0x0 0xff4b0000 &psu_lpd_slcr_secure 0x0 0xff4b0000 0x0 0x30000>,
         <0x0 0xff980000 &lpd_xppu 0x0 0xff980000 0x0 0x10000>,
         <0x0 0xff9c0000 &psu_lpd_xppu_sink 0x0 0xff9c0000 0x0 0x10000>,
         <0x0 0xffcf0000 &psu_mbistjtag 0x0 0xffcf0000 0x0 0x10000>,
         <0x0 0xff990000 &psu_message_buffers 0x0 0xff990000 0x0 0x10000>,
         <0x0 0xff960000 &ocm 0x0 0xff960000 0x0 0x10000>,
         <0x0 0xffa70000 &psu_ocm_xmpu_cfg 0x0 0xffa70000 0x0 0x10000>,
         <0x0 0xffd80000 &psu_pmu_global_0 0x0 0xffd80000 0x0 0x40000>,
         <0x0 0xff0f0000 &qspi 0x0 0xff0f0000 0x0 0x10000>,
         <0x0 0xc0000000 &psu_qspi_linear_0_memory 0x0 0xc0000000 0x0 0x20000000>,
         <0x0 0xffe00000 &psu_r5_0_atcm_global 0x0 0xffe00000 0x0 0x10000>,
         <0x0 0xffe20000 &psu_r5_0_btcm_global 0x0 0xffe20000 0x0 0x10000>,
         <0x0 0xffe90000 &psu_r5_1_atcm_global 0x0 0xffe90000 0x0 0x10000>,
         <0x0 0xffeb0000 &psu_r5_1_btcm_global 0x0 0xffeb0000 0x0 0x10000>,
         <0x0 0xffe00000 &psu_r5_tcm_ram_global 0x0 0xffe00000 0x0 0x40000>,
         <0x0 0xff9a0000 &psu_rpu 0x0 0xff9a0000 0x0 0x10000>,
         <0x0 0xffce0000 &psu_rsa 0x0 0xffce0000 0x0 0x10000>,
         <0x0 0xffa60000 &rtc 0x0 0xffa60000 0x0 0x10000>,
         <0x0 0xfd0c0000 &sata 0x0 0xfd0c0000 0x0 0x10000>,
         <0x0 0xff170000 &sdhci1 0x0 0xff170000 0x0 0x10000>,
         <0x0 0xfd400000 &psgtr 0x0 0xfd400000 0x0 0x80000>,
         <0x0 0xfd3d0000 &psu_siou 0x0 0xfd3d0000 0x0 0x10000>,
         <0x0 0xfd800000 &smmu 0x0 0xfd800000 0x0 0x800000>,
         <0x0 0xfd5f0000 &psu_smmu_reg 0x0 0xfd5f0000 0x0 0x10000>,
         <0x0 0xff110000 &ttc0 0x0 0xff110000 0x0 0x10000>,
         <0x0 0xff120000 &ttc1 0x0 0xff120000 0x0 0x10000>,
         <0x0 0xff130000 &ttc2 0x0 0xff130000 0x0 0x10000>,
         <0x0 0xff140000 &ttc3 0x0 0xff140000 0x0 0x10000>,
         <0x0 0xff000000 &uart0 0x0 0xff000000 0x0 0x10000>,
         <0x0 0xff9d0000 &usb0 0x0 0xff9d0000 0x0 0x10000>,
         <0x0 0xfe200000 &dwc3_0 0x0 0xfe200000 0x0 0x100000>,
         <0x0 0xff150000 &lpd_watchdog 0x0 0xff150000 0x0 0x10000>,
         <0x0 0xfd4d0000 &watchdog0 0x0 0xfd4d0000 0x0 0x10000>;
  #ranges-address-cells = <0x2>;
  #ranges-size-cells = <0x2>;
 };
 cpus_r5_0: cpus-r5@0 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0xf9000000 &amba_rpu 0xf9000000 0x3000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff310000 &ipi1 0xff310000 0x10000>,
         <0x100000 &psu_r5_ddr_0_memory 0x100000 0x7FEFFFFF>,
         <0xa0000000 &DAC_DDR_DMA_axi_dma_0 0xa0000000 0x10000>,
         <0xa0202000 &PS_Subsystem_axi_gpio_dac 0xa0202000 0x1000>,
         <0xa0203000 &ADC_DDR_DMA_axi_dma_0 0xa0203000 0x1000>,
         <0xa0204000 &ADC_DDR_DMA_axis_inter_adc_xbar 0xa0204000 0x1000>,
         <0xa0205000 &PS_Subsystem_axi_gpio_spi_mux 0xa0205000 0x1000>,
         <0xa0240000 &PS_Subsystem_axi_gpio_adc 0xa0240000 0x1000>,
         <0xa0300000 &PS_Subsystem_axi_gpio_mts 0xa0300000 0x10000>,
         <0xa0310000 &ADC_DDR_DMA_tlast_gen_v1_0_0 0xa0310000 0x1000>,
         <0xb0000000 &ex_design_dac_source_i 0xb0000000 0x200000>,
         <0xb0200000 &ex_design_tdd_module_i 0xb0200000 0x10000>,
         <0xb0400000 &ex_design_adc_sink_i 0xb0400000 0x200000>,
         <0xb4b00000 &ex_design_rfip 0xb4b00000 0x40000>,
         <0xb4c00000 &clocking_block_clk_wiz_dac0 0xb4c00000 0x10000>,
         <0xb4c10000 &clocking_block_clk_wiz_dac1 0xb4c10000 0x10000>,
         <0xb4c20000 &clocking_block_clk_wiz_dac2 0xb4c20000 0x10000>,
         <0xb4c30000 &clocking_block_clk_wiz_dac3 0xb4c30000 0x10000>,
         <0xb4c40000 &clocking_block_clk_wiz_adc0 0xb4c40000 0x10000>,
         <0xb4c50000 &clocking_block_clk_wiz_adc1 0xb4c50000 0x10000>,
         <0xb4c60000 &clocking_block_clk_wiz_adc2 0xb4c60000 0x10000>,
         <0xb4c70000 &clocking_block_clk_wiz_adc3 0xb4c70000 0x10000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfe800000 &coresight_0 0xfe800000 0x800000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0x0 &psu_r5_0_atcm 0x0 0x10000>,
         <0x20000 &psu_r5_0_btcm 0x20000 0x10000>,
         <0x0 &psu_r5_tcm_ram_0 0x0 0x40000>,
         <0xf9000000 &gic_r5 0xf9000000 0x10000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
 cpus_r5_1: cpus-r5@1 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0xf9000000 &amba_rpu 0xf9000000 0x3000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff320000 &ipi2 0xff320000 0x10000>,
         <0x100000 &psu_r5_ddr_0_memory 0x100000 0x7FEFFFFF>,
         <0xa0000000 &DAC_DDR_DMA_axi_dma_0 0xa0000000 0x10000>,
         <0xa0202000 &PS_Subsystem_axi_gpio_dac 0xa0202000 0x1000>,
         <0xa0203000 &ADC_DDR_DMA_axi_dma_0 0xa0203000 0x1000>,
         <0xa0204000 &ADC_DDR_DMA_axis_inter_adc_xbar 0xa0204000 0x1000>,
         <0xa0205000 &PS_Subsystem_axi_gpio_spi_mux 0xa0205000 0x1000>,
         <0xa0240000 &PS_Subsystem_axi_gpio_adc 0xa0240000 0x1000>,
         <0xa0300000 &PS_Subsystem_axi_gpio_mts 0xa0300000 0x10000>,
         <0xa0310000 &ADC_DDR_DMA_tlast_gen_v1_0_0 0xa0310000 0x1000>,
         <0xb0000000 &ex_design_dac_source_i 0xb0000000 0x200000>,
         <0xb0200000 &ex_design_tdd_module_i 0xb0200000 0x10000>,
         <0xb0400000 &ex_design_adc_sink_i 0xb0400000 0x200000>,
         <0xb4b00000 &ex_design_rfip 0xb4b00000 0x40000>,
         <0xb4c00000 &clocking_block_clk_wiz_dac0 0xb4c00000 0x10000>,
         <0xb4c10000 &clocking_block_clk_wiz_dac1 0xb4c10000 0x10000>,
         <0xb4c20000 &clocking_block_clk_wiz_dac2 0xb4c20000 0x10000>,
         <0xb4c30000 &clocking_block_clk_wiz_dac3 0xb4c30000 0x10000>,
         <0xb4c40000 &clocking_block_clk_wiz_adc0 0xb4c40000 0x10000>,
         <0xb4c50000 &clocking_block_clk_wiz_adc1 0xb4c50000 0x10000>,
         <0xb4c60000 &clocking_block_clk_wiz_adc2 0xb4c60000 0x10000>,
         <0xb4c70000 &clocking_block_clk_wiz_adc3 0xb4c70000 0x10000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfe800000 &coresight_0 0xfe800000 0x800000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0xf9000000 &gic_r5 0xf9000000 0x10000>,
         <0x0 &psu_r5_1_atcm 0x0 0x10000>,
         <0x20000 &psu_r5_1_btcm 0x20000 0x10000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
 cpus_microblaze_0: cpus_microblaze@0 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0x0 &zynqmp_reset 0x0 0x0>,
         <0xFFFC0000 &psu_ocm_ram_0_memory 0xFFFC0000 0x40000>,
         <0xff330000 &ipi3 0xff330000 0x1000>,
         <0xff331000 &ipi4 0xff331000 0x1000>,
         <0xff332000 &ipi5 0xff332000 0x1000>,
         <0xff333000 &ipi6 0xff333000 0x1000>,
         <0x0 &psu_ddr_0_memory 0x0 0x7FF00000>,
         <0x7FF00000 &psu_ddr_0_memory 0x7FF00000 0x100000>,
         <0xa0000000 &DAC_DDR_DMA_axi_dma_0 0xa0000000 0x10000>,
         <0xa0202000 &PS_Subsystem_axi_gpio_dac 0xa0202000 0x1000>,
         <0xa0203000 &ADC_DDR_DMA_axi_dma_0 0xa0203000 0x1000>,
         <0xa0204000 &ADC_DDR_DMA_axis_inter_adc_xbar 0xa0204000 0x1000>,
         <0xa0205000 &PS_Subsystem_axi_gpio_spi_mux 0xa0205000 0x1000>,
         <0xa0240000 &PS_Subsystem_axi_gpio_adc 0xa0240000 0x1000>,
         <0xa0300000 &PS_Subsystem_axi_gpio_mts 0xa0300000 0x10000>,
         <0xa0310000 &ADC_DDR_DMA_tlast_gen_v1_0_0 0xa0310000 0x1000>,
         <0xb0000000 &ex_design_dac_source_i 0xb0000000 0x200000>,
         <0xb0200000 &ex_design_tdd_module_i 0xb0200000 0x10000>,
         <0xb0400000 &ex_design_adc_sink_i 0xb0400000 0x200000>,
         <0xb4b00000 &ex_design_rfip 0xb4b00000 0x40000>,
         <0xb4c00000 &clocking_block_clk_wiz_dac0 0xb4c00000 0x10000>,
         <0xb4c10000 &clocking_block_clk_wiz_dac1 0xb4c10000 0x10000>,
         <0xb4c20000 &clocking_block_clk_wiz_dac2 0xb4c20000 0x10000>,
         <0xb4c30000 &clocking_block_clk_wiz_dac3 0xb4c30000 0x10000>,
         <0xb4c40000 &clocking_block_clk_wiz_adc0 0xb4c40000 0x10000>,
         <0xb4c50000 &clocking_block_clk_wiz_adc1 0xb4c50000 0x10000>,
         <0xb4c60000 &clocking_block_clk_wiz_adc2 0xb4c60000 0x10000>,
         <0xb4c70000 &clocking_block_clk_wiz_adc3 0xb4c70000 0x10000>,
         <0xffa80000 &lpd_dma_chan1 0xffa80000 0x10000>,
         <0xffa90000 &lpd_dma_chan2 0xffa90000 0x10000>,
         <0xffaa0000 &lpd_dma_chan3 0xffaa0000 0x10000>,
         <0xffab0000 &lpd_dma_chan4 0xffab0000 0x10000>,
         <0xffac0000 &lpd_dma_chan5 0xffac0000 0x10000>,
         <0xffad0000 &lpd_dma_chan6 0xffad0000 0x10000>,
         <0xffae0000 &lpd_dma_chan7 0xffae0000 0x10000>,
         <0xffaf0000 &lpd_dma_chan8 0xffaf0000 0x10000>,
         <0xfd360000 &psu_afi_0 0xfd360000 0x10000>,
         <0xfd370000 &psu_afi_1 0xfd370000 0x10000>,
         <0xfd380000 &psu_afi_2 0xfd380000 0x10000>,
         <0xfd390000 &psu_afi_3 0xfd390000 0x10000>,
         <0xfd3a0000 &psu_afi_4 0xfd3a0000 0x10000>,
         <0xfd3b0000 &psu_afi_5 0xfd3b0000 0x10000>,
         <0xff9b0000 &psu_afi_6 0xff9b0000 0x10000>,
         <0xffa50000 &xilinx_ams 0xffa50000 0x10000>,
         <0xfd0b0000 &perf_monitor_ddr 0xfd0b0000 0x10000>,
         <0xffa00000 &perf_monitor_ocm 0xffa00000 0x10000>,
         <0xffa10000 &perf_monitor_lpd 0xffa10000 0x10000>,
         <0xfd490000 &perf_monitor_cci 0xfd490000 0x10000>,
         <0xfd5c0000 &psu_apu 0xfd5c0000 0x10000>,
         <0xfd6e0000 &psu_cci_gpv 0xfd6e0000 0x10000>,
         <0xfd5e0000 &psu_cci_reg 0xfd5e0000 0x10000>,
         <0xfd1a0000 &psu_crf_apb 0xfd1a0000 0x140000>,
         <0xff5e0000 &psu_crl_apb 0xff5e0000 0x280000>,
         <0xffca0000 &psu_csu_0 0xffca0000 0x10000>,
         <0xffc80000 &csudma_0 0xffc80000 0x20000>,
         <0xff380000 &psu_ctrl_ipi 0xff380000 0x80000>,
         <0xfd080000 &psu_ddr_phy 0xfd080000 0x10000>,
         <0xfd090000 &psu_ddr_qos_ctrl 0xfd090000 0x10000>,
         <0xfd000000 &psu_ddr_xmpu0_cfg 0xfd000000 0x10000>,
         <0xfd010000 &psu_ddr_xmpu1_cfg 0xfd010000 0x10000>,
         <0xfd020000 &psu_ddr_xmpu2_cfg 0xfd020000 0x10000>,
         <0xfd030000 &psu_ddr_xmpu3_cfg 0xfd030000 0x10000>,
         <0xfd040000 &psu_ddr_xmpu4_cfg 0xfd040000 0x10000>,
         <0xfd050000 &psu_ddr_xmpu5_cfg 0xfd050000 0x10000>,
         <0xfd070000 &mc 0xfd070000 0x1000>,
         <0xffcc0000 &psu_efuse 0xffcc0000 0x10000>,
         <0xff0e0000 &gem3 0xff0e0000 0x10000>,
         <0xfd700000 &psu_fpd_gpv 0xfd700000 0x100000>,
         <0xfd610000 &psu_fpd_slcr 0xfd610000 0x80000>,
         <0xfd690000 &psu_fpd_slcr_secure 0xfd690000 0x40000>,
         <0xfd5d0000 &psu_fpd_xmpu_cfg 0xfd5d0000 0x10000>,
         <0xfd4f0000 &psu_fpd_xmpu_sink 0xfd4f0000 0x10000>,
         <0xfd500000 &fpd_dma_chan1 0xfd500000 0x10000>,
         <0xfd510000 &fpd_dma_chan2 0xfd510000 0x10000>,
         <0xfd520000 &fpd_dma_chan3 0xfd520000 0x10000>,
         <0xfd530000 &fpd_dma_chan4 0xfd530000 0x10000>,
         <0xfd540000 &fpd_dma_chan5 0xfd540000 0x10000>,
         <0xfd550000 &fpd_dma_chan6 0xfd550000 0x10000>,
         <0xfd560000 &fpd_dma_chan7 0xfd560000 0x10000>,
         <0xfd570000 &fpd_dma_chan8 0xfd570000 0x10000>,
         <0xff0a0000 &gpio 0xff0a0000 0x10000>,
         <0xff020000 &i2c0 0xff020000 0x10000>,
         <0xff030000 &i2c1 0xff030000 0x10000>,
         <0xff250000 &psu_iou_scntr 0xff250000 0x10000>,
         <0xff260000 &psu_iou_scntrs 0xff260000 0x10000>,
         <0xff240000 &psu_iousecure_slcr 0xff240000 0x10000>,
         <0xff180000 &psu_iouslcr_0 0xff180000 0xc0000>,
         <0xff410000 &psu_lpd_slcr 0xff410000 0xa0000>,
         <0xff4b0000 &psu_lpd_slcr_secure 0xff4b0000 0x30000>,
         <0xff980000 &lpd_xppu 0xff980000 0x10000>,
         <0xff9c0000 &psu_lpd_xppu_sink 0xff9c0000 0x10000>,
         <0xffcf0000 &psu_mbistjtag 0xffcf0000 0x10000>,
         <0xff990000 &psu_message_buffers 0xff990000 0x10000>,
         <0xff960000 &ocm 0xff960000 0x10000>,
         <0xffa70000 &psu_ocm_xmpu_cfg 0xffa70000 0x10000>,
         <0xffd80000 &psu_pmu_global_0 0xffd80000 0x40000>,
         <0xff0f0000 &qspi 0xff0f0000 0x10000>,
         <0xc0000000 &psu_qspi_linear_0_memory 0xc0000000 0x20000000>,
         <0xffe00000 &psu_r5_0_atcm_global 0xffe00000 0x10000>,
         <0xffe20000 &psu_r5_0_btcm_global 0xffe20000 0x10000>,
         <0xffe90000 &psu_r5_1_atcm_global 0xffe90000 0x10000>,
         <0xffeb0000 &psu_r5_1_btcm_global 0xffeb0000 0x10000>,
         <0xffe00000 &psu_r5_tcm_ram_global 0xffe00000 0x40000>,
         <0xff9a0000 &psu_rpu 0xff9a0000 0x10000>,
         <0xffce0000 &psu_rsa 0xffce0000 0x10000>,
         <0xffa60000 &rtc 0xffa60000 0x10000>,
         <0xfd0c0000 &sata 0xfd0c0000 0x10000>,
         <0xff170000 &sdhci1 0xff170000 0x10000>,
         <0xfd400000 &psgtr 0xfd400000 0x80000>,
         <0xfd3d0000 &psu_siou 0xfd3d0000 0x10000>,
         <0xfd800000 &smmu 0xfd800000 0x800000>,
         <0xfd5f0000 &psu_smmu_reg 0xfd5f0000 0x10000>,
         <0xff110000 &ttc0 0xff110000 0x10000>,
         <0xff120000 &ttc1 0xff120000 0x10000>,
         <0xff130000 &ttc2 0xff130000 0x10000>,
         <0xff140000 &ttc3 0xff140000 0x10000>,
         <0xff000000 &uart0 0xff000000 0x10000>,
         <0xff9d0000 &usb0 0xff9d0000 0x10000>,
         <0xfe200000 &dwc3_0 0xfe200000 0x100000>,
         <0xff150000 &lpd_watchdog 0xff150000 0x10000>,
         <0xfd4d0000 &watchdog0 0xfd4d0000 0x10000>,
         <0xffcb0000 &csuwdt_0 0xffcb0000 0x10000>,
         <0xffcd0000 &psu_bbram_0 0xffcd0000 0x10000>,
         <0xffd40000 &psu_pmu_iomodule 0xffd40000 0x20000>,
         <0xffdc0000 &psu_pmu_ram 0xffdc0000 0x20000>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
};
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi" 1
# 12 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi"
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/input/input.h" 1
# 12 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/input/input.h"
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/input/linux-event-codes.h" 1
# 13 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/input/input.h" 2
# 13 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi" 2

# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/pinctrl/pinctrl-zynqmp.h" 1
# 15 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi" 2
# 1 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/include/dt-bindings/phy/phy.h" 1
# 16 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi" 2

/ {
 model = "ZynqMP ZCU208 RevA";
 compatible = "xlnx,zynqmp-zcu208-revA", "xlnx,zynqmp-zcu208", "xlnx,zynqmp";

 aliases {
  ethernet0 = &gem3;
  i2c0 = &i2c0;
  i2c1 = &i2c1;
  mmc0 = &sdhci1;
  nvmem0 = &eeprom;
  rtc0 = &rtc;
  serial0 = &uart0;
  serial1 = &dcc;
  spi0 = &qspi;
  usb0 = &usb0;
 };

 gpio-keys {
  compatible = "gpio-keys";
  autorepeat;
  switch-19 {
   label = "sw19";
   gpios = <&gpio 22 0>;
   linux,code = <108>;
   wakeup-source;
   autorepeat;
  };
 };

 leds {
  compatible = "gpio-leds";
  heartbeat-led {
   label = "heartbeat";
   gpios = <&gpio 23 0>;
   linux,default-trigger = "heartbeat";
  };
 };

 ina226-vccint {
  compatible = "iio-hwmon";
  io-channels = <&vccint 0>, <&vccint 1>, <&vccint 2>, <&vccint 3>;
 };
 ina226-vccint-io-bram-ps {
  compatible = "iio-hwmon";
  io-channels = <&vccint_io_bram_ps 0>, <&vccint_io_bram_ps 1>, <&vccint_io_bram_ps 2>, <&vccint_io_bram_ps 3>;
 };
 ina226-vcc1v8 {
  compatible = "iio-hwmon";
  io-channels = <&vcc1v8 0>, <&vcc1v8 1>, <&vcc1v8 2>, <&vcc1v8 3>;
 };
 ina226-vcc1v2 {
  compatible = "iio-hwmon";
  io-channels = <&vcc1v2 0>, <&vcc1v2 1>, <&vcc1v2 2>, <&vcc1v2 3>;
 };
 ina226-vadj-fmc {
  compatible = "iio-hwmon";
  io-channels = <&vadj_fmc 0>, <&vadj_fmc 1>, <&vadj_fmc 2>, <&vadj_fmc 3>;
 };
 ina226-mgtavcc {
  compatible = "iio-hwmon";
  io-channels = <&mgtavcc 0>, <&mgtavcc 1>, <&mgtavcc 2>, <&mgtavcc 3>;
 };
 ina226-mgt1v2 {
  compatible = "iio-hwmon";
  io-channels = <&mgt1v2 0>, <&mgt1v2 1>, <&mgt1v2 2>, <&mgt1v2 3>;
 };
 ina226-mgt1v8 {
  compatible = "iio-hwmon";
  io-channels = <&mgt1v8 0>, <&mgt1v8 1>, <&mgt1v8 2>, <&mgt1v8 3>;
 };
 ina226-vccint-ams {
  compatible = "iio-hwmon";
  io-channels = <&vccint_ams 0>, <&vccint_ams 1>, <&vccint_ams 2>, <&vccint_ams 3>;
 };
 ina226-dac-avtt {
  compatible = "iio-hwmon";
  io-channels = <&dac_avtt 0>, <&dac_avtt 1>, <&dac_avtt 2>, <&dac_avtt 3>;
 };
 ina226-dac-avccaux {
  compatible = "iio-hwmon";
  io-channels = <&dac_avccaux 0>, <&dac_avccaux 1>, <&dac_avccaux 2>, <&dac_avccaux 3>;
 };
 ina226-adc-avcc {
  compatible = "iio-hwmon";
  io-channels = <&adc_avcc 0>, <&adc_avcc 1>, <&adc_avcc 2>, <&adc_avcc 3>;
 };
 ina226-adc-avccaux {
  compatible = "iio-hwmon";
  io-channels = <&adc_avccaux 0>, <&adc_avccaux 1>, <&adc_avccaux 2>, <&adc_avccaux 3>;
 };
 ina226-dac-avcc {
  compatible = "iio-hwmon";
  io-channels = <&dac_avcc 0>, <&dac_avcc 1>, <&dac_avcc 2>, <&dac_avcc 3>;
 };


 ref48: ref48M {
  compatible = "fixed-clock";
  #clock-cells = <0>;
  clock-frequency = <48000000>;
 };
};


&gem3 {
 phy-handle = <&phy0>;
 phy-mode = "rgmii-id";
 mdio: mdio {
  #address-cells = <1>;
  #size-cells = <0>;
  phy0: ethernet-phy@c {
   #phy-cells = <1>;
   compatible = "ethernet-phy-id2000.a231";
   reg = <0xc>;
   ti,rx-internal-delay = <0x8>;
   ti,tx-internal-delay = <0xa>;
   ti,fifo-depth = <0x1>;
   ti,dp83867-rxctrl-strap-quirk;
   reset-gpios = <&tca6416_u15 6 1>;
  };
 };
};

&gpio {
 gpio-line-names = "QSPI_LWR_CLK", "QSPI_LWR_DQ1", "QSPI_LWR_DQ2", "QSPI_LWR_DQ3", "QSPI_LWR_DQ0",
    "QSPI_LWR_CS_B", "", "QSPI_UPR_CS_B", "QSPI_UPR_DQ0", "QSPI_UPR_DQ1",
    "QSPI_UPR_DQ2", "QSPI_UPR_DQ3", "QSPI_UPR_CLK", "PS_GPIO2", "I2C0_SCL",
    "I2C0_SDA", "I2C1_SCL", "I2C1_SDA", "UART0_TXD", "UART0_RXD",
    "", "", "BUTTON", "LED", "",
    "", "PMU_INPUT", "", "", "",
    "", "", "PMU_GPO0", "PMU_GPO1", "PMU_GPO2",
    "PMU_GPO3", "PMU_GPO4", "PMU_GPO5", "PS_GPIO1", "SDIO_SEL",
    "SDIO_DIR_CMD", "SDIO_DIR_DAT0", "SDIO_DIR_DAT1", "", "",
    "SDIO_DETECT", "SDIO_DAT0", "SDIO_DAT1", "SDIO_DAT2", "SDIO_DAT3",
    "SDIO_CMD", "SDIO_CLK", "USB_CLK", "USB_DIR", "USB_DATA2",
    "USB_NXT", "USB_DATA0", "USB_DATA1", "USB_STP", "USB_DATA3",
    "USB_DATA4", "USB_DATA5", "USB_DATA6", "USB_DATA7", "ENET_TX_CLK",
    "ENET_TX_D0", "ENET_TX_D1", "ENET_TX_D2", "ENET_TX_D3", "ENET_TX_CTRL",
    "ENET_RX_CLK", "ENET_RX_D0", "ENET_RX_D1", "ENET_RX_D2", "ENET_RX_D3",
    "ENET_RX_CTRL", "ENET_MDC", "ENET_MDIO",
    "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "", "",
    "", "", "", "";
};

&i2c0 {
 clock-frequency = <400000>;
 pinctrl-names = "default", "gpio";
 pinctrl-0 = <&pinctrl_i2c0_default>;
 pinctrl-1 = <&pinctrl_i2c0_gpio>;
 scl-gpios = <&gpio 14 (0 | (2 | 4))>;
 sda-gpios = <&gpio 15 (0 | (2 | 4))>;

 tca6416_u15: gpio@20 {
  compatible = "ti,tca6416";
  reg = <0x20>;
  gpio-controller;
  #gpio-cells = <2>;
  gpio-line-names = "MAX6643_OT_B", "MAX6643_FANFAIL_B", "MIO26_PMU_INPUT_LS", "DAC_AVTT_VOUT_SEL",
      "", "IIC_MUX_RESET_B", "GEM3_EXP_RESET_B", "MAX6643_FULL_SPEED",
      "FMCP_HSPC_PRSNT_M2C_B", "", "", "VCCINT_VRHOT_B",
      "", "8A34001_EXP_RST_B", "IRPS5401_ALERT_B", "INA226_PMBUS_ALERT";
 };

 i2c-mux@75 {
  compatible = "nxp,pca9544";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x75>;
  i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;


   vccint: ina226@40 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vccint";
    reg = <0x40>;
    shunt-resistor = <5000>;
   };
   vccint_io_bram_ps: ina226@41 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vccint-io-bram-ps";
    reg = <0x41>;
    shunt-resistor = <5000>;
   };
   vcc1v8: ina226@42 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vcc1v8";
    reg = <0x42>;
    shunt-resistor = <2000>;
   };
   vcc1v2: ina226@43 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vcc1v2";
    reg = <0x43>;
    shunt-resistor = <5000>;
   };
   vadj_fmc: ina226@45 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vadj-fmc";
    reg = <0x45>;
    shunt-resistor = <5000>;
   };
   mgtavcc: ina226@46 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-mgtavcc";
    reg = <0x46>;
    shunt-resistor = <2000>;
   };
   mgt1v2: ina226@47 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-mgt1v2";
    reg = <0x47>;
    shunt-resistor = <5000>;
   };
   mgt1v8: ina226@48 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-mgt1v8";
    reg = <0x48>;
    shunt-resistor = <5000>;
   };
   vccint_ams: ina226@49 {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-vccint-ams";
    reg = <0x49>;
    shunt-resistor = <5000>;
   };
   dac_avtt: ina226@4a {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-dac-avtt";
    reg = <0x4a>;
    shunt-resistor = <5000>;
   };
   dac_avccaux: ina226@4b {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-dac-avccaux";
    reg = <0x4b>;
    shunt-resistor = <5000>;
   };
   adc_avcc: ina226@4c {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-adc-avcc";
    reg = <0x4c>;
    shunt-resistor = <5000>;
   };
   adc_avccaux: ina226@4d {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-adc-avccaux";
    reg = <0x4d>;
    shunt-resistor = <5000>;
   };
   dac_avcc: ina226@4e {
    compatible = "ti,ina226";
    #io-channel-cells = <1>;
    label = "ina226-dac-avcc";
    reg = <0x4e>;
    shunt-resistor = <5000>;
   };
  };
  i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;

  };
  i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;





   irps5401_44: irps5401@44 {
    compatible = "infineon,irps5401";
    reg = <0x44>;
   };
   irps5401_45: irps5401@45 {
    compatible = "infineon,irps5401";
    reg = <0x45>;
   };


  };
  i2c@3 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <3>;

  };
 };

};

&i2c1 {
 clock-frequency = <400000>;
 pinctrl-names = "default", "gpio";
 pinctrl-0 = <&pinctrl_i2c1_default>;
 pinctrl-1 = <&pinctrl_i2c1_gpio>;
 scl-gpios = <&gpio 16 (0 | (2 | 4))>;
 sda-gpios = <&gpio 17 (0 | (2 | 4))>;

 i2c-mux@74 {
  compatible = "nxp,pca9548";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x74>;
  i2c-mux-idle-disconnect;

  i2c_eeprom: i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;
# 371 "/proj/petalinux/2025.1/petalinux-v2025.1_05180714/logs/bsps/xilinx-zcu208-2025.1/project-spec/hw-description/zcu208-reva.dtsi"
   eeprom: eeprom@54 {
    compatible = "atmel,24c128";
    reg = <0x54>;
   };
  };
  i2c_si5341: i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;
   si5341: clock-generator@36 {
    compatible = "silabs,si5341";
    reg = <0x36>;
    #clock-cells = <2>;
    #address-cells = <1>;
    #size-cells = <0>;
    clocks = <&ref48>;
    clock-names = "xtal";
    clock-output-names = "si5341";

    si5341_2: out@2 {

     reg = <2>;
     always-on;
    };
    si5341_3: out@3 {

     reg = <3>;
     always-on;
    };
    si5341_5: out@5 {

     reg = <5>;
     always-on;
    };
    si5341_6: out@6 {

     reg = <6>;
     always-on;
    };
    si5341_9: out@9 {

     reg = <9>;
     always-on;
    };
   };
  };
  i2c_si570_user_c0: i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;
   si570_1: clock-generator@5d {
    #clock-cells = <0>;
    compatible = "silabs,si570";
    reg = <0x5d>;
    temperature-stability = <50>;
    factory-fout = <300000000>;
    clock-frequency = <300000000>;
    clock-output-names = "si570_user_c0";
   };
  };
  i2c_si570_mgt: i2c@3 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <3>;
   si570_2: clock-generator@5d {
    #clock-cells = <0>;
    compatible = "silabs,si570";
    reg = <0x5d>;
    temperature-stability = <50>;
    factory-fout = <156250000>;
    clock-frequency = <156250000>;
    clock-output-names = "si570_mgt";
   };
  };
  i2c_8a34001: i2c@4 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <4>;
   idt_8a34001: phc@5b {
    compatible = "idt,8a34001";
    reg = <0x5b>;
   };
  };
  i2c_clk104: i2c@5 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <5>;

  };
  i2c@6 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <6>;

  };

 };

 i2c-mux@75 {
  compatible = "nxp,pca9548";
  #address-cells = <1>;
  #size-cells = <0>;
  reg = <0x75>;
  i2c-mux-idle-disconnect;

  i2c@0 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0>;

  };
  i2c_si570_user_c1: i2c@1 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <1>;
   si570_3: clock-generator@5d {
    #clock-cells = <0>;
    compatible = "silabs,si570";
    reg = <0x5d>;
    temperature-stability = <50>;
    factory-fout = <300000000>;
    clock-frequency = <300000000>;
    clock-output-names = "si570_user_c1";
   };
  };
  i2c@2 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <2>;

  };
  i2c@3 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <3>;

  };
  i2c@4 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <4>;

  };
  i2c@5 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <5>;

  };
  i2c@6 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <6>;

  };
  i2c@7 {
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <7>;

  };
 };

};

&pinctrl0 {
 status = "okay";
 pinctrl_i2c0_default: i2c0-default {
  mux {
   groups = "i2c0_3_grp";
   function = "i2c0";
  };

  conf {
   groups = "i2c0_3_grp";
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c0_gpio: i2c0-gpio-grp {
  mux {
   groups = "gpio0_14_grp", "gpio0_15_grp";
   function = "gpio0";
  };

  conf {
   groups = "gpio0_14_grp", "gpio0_15_grp";
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c1_default: i2c1-default {
  mux {
   groups = "i2c1_4_grp";
   function = "i2c1";
  };

  conf {
   groups = "i2c1_4_grp";
   bias-pull-up;
   slew-rate = <1>;
   power-source = <1>;
  };
 };

 pinctrl_i2c1_gpio: i2c1-gpio-grp {
  mux {
   groups = "gpio0_16_grp", "gpio0_17_grp";
   function = "gpio0";
  };

  conf {
   groups = "gpio0_16_grp", "gpio0_17_grp";
   slew-rate = <1>;
   power-source = <1>;
  };
 };
};

&qspi {
 num-cs = <2>;
 flash@0 {
  compatible = "m25p80", "jedec,spi-nor";
  #address-cells = <1>;
  #size-cells = <1>;
  reg = <0>, <1>;
  parallel-memories = /bits/ 64 <0x10000000 0x10000000>;
  spi-tx-bus-width = <4>;
  spi-rx-bus-width = <4>;
  spi-max-frequency = <108000000>;
 };
};

&psgtr {
 status = "okay";

 clocks = <&si5341 0 2>, <&si5341 0 3>;
 clock-names = "ref2", "ref3";
};


&sata {

 ceva,p0-cominit-params = /bits/ 8 <0x18 0x40 0x18 0x28>;
 ceva,p0-comwake-params = /bits/ 8 <0x06 0x14 0x08 0x0E>;
 ceva,p0-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 ceva,p0-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
 ceva,p1-cominit-params = /bits/ 8 <0x18 0x40 0x18 0x28>;
 ceva,p1-comwake-params = /bits/ 8 <0x06 0x14 0x08 0x0E>;
 ceva,p1-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 ceva,p1-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
 phy-names = "sata-phy";
 phys = <&psgtr 3 1 1 3>;
};


&sdhci1 {
 disable-wp;



 no-1-8-v;
 xlnx,mio-bank = <1>;
};



&usb0 {
 phy-names = "usb3-phy";
 phys = <&psgtr 2 4 0 2>;
};

&dwc3_0 {
 dr_mode = "host";
 snps,usb3_lpm_capable;
 maximum-speed = "super-speed";
};
# 590 "/tmp/tmpe9hemm83" 2
