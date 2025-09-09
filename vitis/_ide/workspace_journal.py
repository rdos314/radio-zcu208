# 2025-09-09T22:40:45.220773
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "adc",hw_design = "$COMPONENT_LOCATION/../../vivado/ps_wrapper.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",generate_dtb = True,advanced_options = advanced_options)

platform = client.get_component(name="adc")
status = platform.build()

vitis.dispose()

