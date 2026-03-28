# 2026-03-28T23:33:02.354703100
import vitis

client = vitis.create_client()
client.set_workspace(path="windows")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="analyse")
comp.build()

vitis.dispose()

