# 2025-09-20T14:36:55.052832400
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../ps_wrapper.xsa",os = "standalone",cpu = "psu_cortexr5_0",domain_name = "standalone_psu_cortexr5_0",is_pmufw_req = True,generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="control",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexr5_0")

comp = client.get_component(name="control")
status = comp.import_files(from_loc="", files=["C:\radio-zcu208-old\vitis\control\src\control.c"])

status = platform.build()

comp = client.get_component(name="control")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

