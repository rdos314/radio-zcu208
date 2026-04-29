#
# This file is the gdbserver-service recipe.
#

SUMMARY = "Autostart gdbserver at boot"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://gdbserver.service"

inherit systemd

SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE:${PN} = "gdbserver.service"

do_install() {
	     install -d ${D}${systemd_system_unitdir}
	     install -m 0644 ${WORKDIR}/gdbserver.service ${D}${systemd_system_unitdir}
}

FILES:{PN} += "${systemd_system_unitdir}/gdbserver.service"

