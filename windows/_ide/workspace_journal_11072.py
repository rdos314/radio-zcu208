# 2026-05-03T21:18:16.215715200
import vitis

client = vitis.create_client()
client.set_workspace(path="windows")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

vitis.dispose()

