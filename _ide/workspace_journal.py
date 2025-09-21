# 2025-09-21T13:37:57.742243
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

comp = client.create_app_component(name="dummy",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexr5_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="dummy")
comp.build()

vitis.dispose()

