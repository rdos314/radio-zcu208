# 2025-09-21T19:13:40.854523700
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/radio-zcu208")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="control")
comp.build()

