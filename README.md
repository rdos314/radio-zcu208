<h3>Source tree</h3>
vivado - Vivado Verilog source<br>
vitis - Vitis platform and control software<br>
linux - Peta-linux source<br>

<h3>PetaLinux build</h3>
Ubuntu 22.04.5 must be used to build PetaLinux. Link: https://releases.ubuntu.com/jammy/<br><br>

Install the required software modules before installing PetaLinux:<br>
sudo apt-get install iproute2 gawk python3 python build-essential gcc git make net-tools libncurses5-dev tftpd zlib1g-dev libssl-dev flex bison libselinux1 gnupg wget git-core diffstat chrpath socat xterm autoconf libtool tar unzip texinfo<br><br>

Create a directory for PetaLinux:<br>
cd /home/user<br>
mkdir petalinux<br>
cd petalinux<br><br>

The PetaLinux installer can be downloaded here: https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools.html<br>
Download both the "PetaLinux installer", and the "ZCU208 BSP" to the petalinux directory<br><br>

Install PetaLinux like this:<br>
chmod 755 ./petalinux-v2025.1-final-installer.run<br>
./petalinux-v2025.1-final-installer.run --dir /home/user/petalinux --platform "arm aarch64"<br>

Source PetaLinux before running commands:<br>
source /home/user/petalinux/settings.sh<br><br>

Create the project:<br>
cd ..<br>
mkdir radio-zcu208<br>
cd radio-zcu208<br><br>

petalinux-create -t project -s ../petalinux/zcu208-v2025.1.bsp -n linux<br>
cd linux<br><br>

petalinux-config --get-hw-description ../platform/export/platform/hw/sdt<br><br>

Setup for SD boot without user/password:<br>

petalinux-config<br><br>

Select Image Packaging Configuration > Root file system type.<br>
Select EXT4 (SD/eMMC/SATA/USB) as the root file system type.<br>
Exit menuconfig and save configuration settings.<br><br>

petalinux-config -c rootfs.<br>
Select Image Features > serial-autologin-root.<br><br>

PetaLinux RootFS Settings -→ (root:root;petalinux:petalinux:passwd-expire;)<br><br>

user: petalinux<br>
passw: change on first connect<br><br>

Set Filesystem Packages -→ tcf-agent to enabled<br>
Set Filesystem Packages -→ console -→ network -→ OpenSSH -→ openssh-sftp-server to enabled<br><br>

Exit menuconfig and save configuration settings.<br><br>

Build PetaLinux:<br>

petalinux-build<br>

<h3>Embedded Vitis</h3>

Embedded Vitis and Vivado can be installed either on Windows or on Linux. Link: https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html<br><br>

For Linux, download and install to /home/user/xilinx and then install the libs like this:<br>
cd /home/user/xilinx/2025.1/Vitis/scripts<br>
sudo ./installLibs.sh<br><br>

<h3>XRT and ZOCL</h3>

https://adaptivesupport.amd.com/s/article/1138667?language=en_US

<h3>Antennas and preamplifiers</h3>

Isolator: https://www.herostechnology.co.uk/pages/RF_Galvanic_Isolators.html                            3 MHz - 2.5 GHz<br>
LNA: https://www.pasternack.com/1.5-db-1.3-ghz-low-noise-amplifier-35-db-gain-sma-pe15a1054-p.aspx      10MHz - 1.3GHz, 35dB, 1.5 NF<br>
LNA: https://www.pasternack.com/1.7-db-550-mhz-low-noise-amplifier-29.7-db-gain-sma-pe15a1044-p.aspx    10MHz - 550 MHz, 30dB, 1.7 NF<br><br>

<h3>Example design</h3>

doc: https://docs.amd.com/r/en-US/ug1309-rf-data-converter-interface<br>
source: https://account.amd.com/en/forms/downloads/design-license-xef.html?filename=RF_Analyzer_2024_2.zip<br><br>

doc: https://www.xilinx.com/publications/products/board-kits/zcu208-dds-ila-2020p2.pdf<br>
source: https://account.amd.com/en/forms/downloads/design-license-xef.html?filename=ZCU208_dds_ila_2020p2.zip<br>

<h3>Important links</h3>
https://www.amd.com/en/products/adaptive-socs-and-fpgas/evaluation-boards/zcu208.html<br>
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841823/Booting+via+Serial+ATA+SATA+on+ZCU102+Evaluation+Platform<br>
https://adaptivesupport.amd.com/s/article/000037805?language=en_US<br>
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842475/PetaLinux+Yocto+Tips#PetaLinuxYoctoTips-HowtoAutoRunApplicationatStartup<br>
https://docs.amd.com/r/en-US/Vitis-Tutorials-Embedded-Software<br>
https://docs.amd.com/r/en-US/ug1209-embedded-design-tutorial/Tutorial-Design-Files<br>
https://numato.com/kb/styx-partitioning-sd-card-for-petalinux/<br>
https://adaptivesupport.amd.com/s/article/1192842?language=en_US<br>

https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/rfdc/examples/xrfdc_mts_example.c<br>
https://github.com/Xilinx/embeddedsw/tree/master/XilinxProcessorIPLib/drivers/board_common/src/rfclk<br>
