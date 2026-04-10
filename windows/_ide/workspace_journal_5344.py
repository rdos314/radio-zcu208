# 2026-04-09T11:35:52.934075200
import vitis

client = vitis.create_client()
client.set_workspace(path="windows")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

