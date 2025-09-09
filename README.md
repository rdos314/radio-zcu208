<h3>Source tree</h3>
vivado - Vivado Verilog source<br>
vitis - Vitis platform and control software<br>
linux - Peta-linux source<br>

<h3>Peta Linux build</h3>
Ubuntu 22.04.5: https://releases.ubuntu.com/jammy/<br><br>

sudo apt-get install iproute2 gawk python3 python build-essential gcc git make net-tools libncurses5-dev tftpd zlib1g-dev libssl-dev flex bison libselinux1 gnupg wget git-core diffstat chrpath socat xterm autoconf libtool tar unzip texinfo<br><br>

Embedded Vitis: https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html<br><br>

cd /home/oem/xilinx/2025.1/Vitis/scripts<br>
sudo ./installLibs.sh<br><br>

cd /home/oem<br>
mkdir petalinux<br>
cd petalinux<br><br>

PetaLinux installer: https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools.html<br>
Download "PetaLinux installer", and "ZCU208 BSP" to petalinux<br><br>

chmod 755 ./petalinux-v2025.1-final-installer.run<br>
./petalinux-v2025.1-final-installer.run --dir /home/oem/petalinux --platform "arm aarch64"<br>
source /home/oem/petalinux/settings.sh<br><br>

<h3>Antennas and preamplifiers</h3>

Isolator: https://www.herostechnology.co.uk/pages/RF_Galvanic_Isolators.html                            3 MHz - 2.5 GHz<br>
LNA: https://www.pasternack.com/1.5-db-1.3-ghz-low-noise-amplifier-35-db-gain-sma-pe15a1054-p.aspx      10MHz - 1.3GHz, 35dB, 1.5 NF<br>
LNA: https://www.pasternack.com/1.7-db-550-mhz-low-noise-amplifier-29.7-db-gain-sma-pe15a1044-p.aspx    10MHz - 550 MHz, 30dB, 1.7 NF<br><br>

<h3>Example design</h3>

doc: https://www.xilinx.com/publications/products/board-kits/zcu208-dds-ila-2020p2.pdf<br>
source: https://account.amd.com/en/forms/downloads/design-license-xef.html?filename=ZCU208_dds_ila_2020p2.zip<br>

<h3>Important links</h3>
https://www.amd.com/en/products/adaptive-socs-and-fpgas/evaluation-boards/zcu208.html<br>
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841823/Booting+via+Serial+ATA+SATA+on+ZCU102+Evaluation+Platform<br>
https://adaptivesupport.amd.com/s/article/000037805?language=en_US<br>
https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842475/PetaLinux+Yocto+Tips#PetaLinuxYoctoTips-HowtoAutoRunApplicationatStartup<br>
https://docs.amd.com/r/en-US/Vitis-Tutorials-Embedded-Software<br>
https://numato.com/kb/styx-partitioning-sd-card-for-petalinux/<br>
https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/rfdc/examples/xrfdc_mts_example.c<br>
