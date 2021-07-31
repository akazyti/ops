# HP Elitebook 8470P

The Hackintosh is Created Using **OpenCore** Guide

## Steps to Hackintosh

1. Know your Hardware
2. [Know Terminologies](https://dortania.github.io/OpenCore-Install-Guide/terminology.html)
3. Creating Installer
4. Gathering Core Files
5. Adding Base Files
6. Patching System Specific Files
7. ACPI
8. Creating config.plist



## Knowing Your Hardware

CPU  `cat /proc/cpuinfo | grep -i "model name"`

GPU `lspci | grep -i --color "vga\|3d\|2d"`

Keyboard, Trackpad and Touchscreen Connection Type : `dmesg | grep -i input`

Audio Codec : `aplay -l`

Network Controller : `lspci | grep -i network`

Drive Model : `lshw -class disk -class storage`



#### My Hardware

CPU: Intel(R) Core(TM) i5-3360M CPU @ 2.80GHz

GPU: iGPU intel HD 4000

Keyboard: PS/2 Mouse and Touchad

Audio codec: `PCH [HDA Intel PCH], [92HD81B1X5 Analog]`

Network

- Ethernet:  Intel Corporation 82579LM Gigabit
- Network : Intel Corporation Centrino Advanced-N 6205

Drive Model: Intel Cooperation 7 Series Chipset Family 6-port SATA Controller [AHCI mode]

## Creating Installer

I am Only Covering Unix Because I Hardly used Windows in life just for Adobe Softwares



#### Download Macos

Download [MakeRecovery](https://github.com/acidanthera/OpenCorePkg/releases)

Extract it

```sh
# Change to Macrecovery
cd ~/Downloads/OpenCore-0/Utilities/macrecovery/
# Catalina
python ./macrecovery.py -b Mac-00BE6ED71E35EB86 -m 00000000000000000 download

# create folder
mkdir /media/<your username>/OPENCORE/com.apple.recovery.boot
mv BaseSystem.chunklist  /media/<your username>/OPENCORE/com.apple.recovery.boot
mv BaseSystem.dmg  /media/<your username>/OPENCORE/com.apple.recovery.boot
```



## Gathering Core Files

Download Latest Version Release From [Opencore](https://github.com/acidanthera/OpenCorePkg/releases/)

Extract and rename it *opencore*

Move your EFI into OPENCORE Partition

```sh
mv opencore/X64/EFI /media/<your username>
```

Goto EFI into Partitions

1. Keep `OpenRuntime.efi` From Drivers and Delete other things
2. Keep `OpenShell.efi` From Tools and Delete Everything

At then end Your Tree Structure Should Look Like This

```
.
├── BOOT
│   └── BOOTx64.efi
└── OC
    ├── ACPI
    ├── Drivers
    │   └── OpenRuntime.efi
    ├── Kexts
    ├── OpenCore.efi
    ├── Resources
    │   ├── Audio
    │   ├── Font
    │   ├── Image
    │   └── Label
    └── Tools
        └── OpenShell.efi
```



## Adding Base Files

