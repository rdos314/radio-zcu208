FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2026-04-12-20-09-00.cfg \
            file://user_2026-04-12-20-33-00.cfg \
            file://user_2026-05-01-23-04-00.cfg \
            "

