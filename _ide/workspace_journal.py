# 2025-09-20T23:24:46.042743400
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

comp = client.create_app_component(name="analyse",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "linux_psu_cortexa53",template = "linux_empty_application")

comp = client.get_component("analyse")

status = comp.set_sysroot(sysroot="C:/radio-zcu208/platform")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

proj = client.create_sys_project(name="system", platform="$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

proj = client.get_sys_project(name="system")

proj = proj.add_component(name="analyse")

proj = proj.add_component(name="control")

proj = client.get_sys_project(name="system")

proj.build(comp_name = ["analyse", "control"],build_comps = False)

proj.build(build_comps = False)

status = client.delete_sys_project(name="system")

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="control")
comp.build()

vitis.dispose()

