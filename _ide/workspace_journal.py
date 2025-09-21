# 2025-09-21T16:02:59.138199400
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

status = platform.build()

comp = client.get_component(name="control")
comp.build()

status = platform.build()

comp = client.get_component(name="dummy")
comp.build()

status = platform.remove_boot_bsp()

status = platform.build()

