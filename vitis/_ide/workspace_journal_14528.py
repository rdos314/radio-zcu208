# 2025-09-12T23:18:00.000997400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="adc")
status = platform.remove_boot_bsp()

domain = platform.get_domain(name="linux_psu_cortexa53")

status = domain.set_bif(path="")

status = domain.set_dtb(path="$COMPONENT_LOCATION/../../linux/images/linux/system.dtb")

vitis.dispose()

