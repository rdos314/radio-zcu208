SUMMARY = "Recipe for  build an external axidma Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

INHIBIT_PACKAGE_STRIP = "1"

SRC_URI = "file://Makefile \
           file://axidma.c \
	   file://COPYING \
       file://99-axidma.rules \
          "

S = "${WORKDIR}"

KERNEL_MODULE_AUTOLOAD += "axidma"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

# This tells Bitbake how to install the udev rule into the rootfs
do_install:append() {
    install -d ${D}${sysconfdir}/udev/rules.d
    install -m 0644 ${WORKDIR}/99-axidma.rules ${D}${sysconfdir}/udev/rules.d/
}

# This ensures the udev rule is included in the actual package
FILES:${PN} += "${sysconfdir}/udev/rules.d/99-axidma.rules"
