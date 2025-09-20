# 2025-09-20T23:10:56.349530700
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

platform = client.get_component(name="platform")
domain = platform.add_domain(cpu = "psu_cortexa53",os = "linux",name = "linux_psu_cortexa53",display_name = "linux_psu_cortexa53",generate_dtb = False)

comp = client.create_app_component(name="analyze",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("analyze")

status = comp.set_sysroot(sysroot="C:/radio-zcu208/platform/usr")

comp = client.get_component(name="analyze")
status = comp.import_files(from_loc="", files=["C:\radio-zcu208-old-old\vitis\analyse\src\analyse.c"])

client.delete_component(name="analyze")

comp = client.create_app_component(name="analyse",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("analyse")

status = comp.set_sysroot(sysroot="C:/radio-zcu208/platform")

comp = client.get_component(name="analyse")
status = comp.import_files(from_loc="", files=["C:\radio-zcu208-old-old\vitis\analyse\src\analyse.c"])

status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

