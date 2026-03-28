# 2026-03-28T21:45:17.367502200
import vitis

client = vitis.create_client()
client.set_workspace(path="windows")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../ps_wrapper.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",no_boot_bsp = True,generate_dtb = False,advanced_options = advanced_options)

comp = client.create_app_component(name="analyse",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("analyse")

status = comp.set_sysroot(sysroot="C:/radio-zcu208/sysroot/sysroots/cortexa72-cortexa53-amd-linux")

comp = client.get_component(name="analyse")
status = comp.import_files(from_loc="", files=["C:\radio-zcu208\analyse\src\analyse.c"])

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

