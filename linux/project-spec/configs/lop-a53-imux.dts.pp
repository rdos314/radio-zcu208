# 0 "/home/leif/petalinux/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-a53-imux.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/leif/petalinux/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-a53-imux.dts"
# 12 "/home/leif/petalinux/sysroots/x86_64-petalinux-linux/usr/lib/python3.12/site-packages/lopper/lops/lop-a53-imux.dts"
/dts-v1/;

/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                compatible = "system-device-tree-v1,lop";
                lop_0 {
                        compatible = "system-device-tree-v1,lop,assist-v1";
                        node = "/axi/imux";
                        id = "imux,imux-v1";
                        noexec;
                };

                lop_1 {
                        compatible = "system-device-tree-v1,lop,modify";

                        modify = "/apu-bus/interrupt-controller@f9010000::/axi/interrupt-controller@f9010000";
                };

                lop_2 {
                        compatible = "system-device-tree-v1,lop,modify";

                        modify = "/apu-bus/::";
                };

                lop_3 {
                        compatible = "system-device-tree-v1,lop,select-v1";

                        select_1;
                        select_2 = "/axi/interrupt-controller@.*";
                };

                lop_4 {
                      compatible = "system-device-tree-v1,lop,code-v1";
                      code = "
                                if tree.nodes('/__symbols__', strict=True):
                                        tree['/__symbols__']['gic'] = str(tree.deref('gic_a53'))
                                        tree['/__symbols__'].delete('gic_a53')
                            ";
                };

                lop_5 {
                      compatible = "system-device-tree-v1,lop,code-v1";
                      code = "
                                for s in __selected__:
                                    if s.label == 'gic_a53':
                                        s.label = 'gic'
                                        break
                            ";
                };

                lop_6 {
                      compatible = "system-device-tree-v1,lop,select-v1";

                      select_1;
                      select_2 = "/.*:interrupt-parent:&imux";
                };

                lop_7 {
                      compatible = "system-device-tree-v1,lop,modify";

                      flags = "strict";
                      modify = ":interrupt-parent:&gic";
                };

                lop_8 {
                        compatible = "system-device-tree-v1,lop,modify";

                        modify = "/axi/interrupt-multiplex::";
                };
        };
};
