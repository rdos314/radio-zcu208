# 2025-09-20T23:20:26.320917400
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

client.delete_component(name="analyse")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

comp = client.create_app_component(name="analyse",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("analyse")

status = comp.set_sysroot(sysroot="C:/radio-zcu208/platform")

vitis.dispose()

