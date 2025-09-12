# 2025-09-12T23:50:30.118995400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="adc")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

vitis.dispose()

