FILESEXTRAPATHS_prepend := "${THISDIR}/linux:"

# Enable support for TP-Link TL-W722N USB Wifi adapter and RTL2832U DVB USB
# adapter.
SRC_URI += " file://disable_delay_printk.patch \
             file://usbaudio.cfg \
           "

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/usbaudio.cfg "
