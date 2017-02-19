# Bootloader
TARGET_BOOTLOADER_BOARD_NAME              := MSM8916
TARGET_NO_BOOTLOADER                      := true

# Platform
TARGET_BOARD_PLATFORM                     := msm8916
TARGET_BOARD_PLATFORM_GPU                 := qcom-adreno306

# Architecture
TARGET_ARCH                               := arm
TARGET_ARCH_VARIANT                       := armv7-a-neon
TARGET_ARCH_VARIANT_CPU                   := cortex-a9
TARGET_CPU_ABI                            := armeabi-v7a
TARGET_CPU_ABI2                           := armeabi
TARGET_CPU_SMP                            := true
TARGET_CPU_VARIANT                        := cortex-a7

# Kernel
BOARD_KERNEL_CMDLINE                      := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE                         := 0x80000000
BOARD_KERNEL_PAGESIZE                     := 2048
BOARD_MKBOOTIMG_ARGS                      := --kernel_offset 0x80008000 --ramdisk_offset 0x82000000 --tags_offset 0x81e00000 --dt device/samsung/coreprimelte/dt.img

# Prebuilt kernel
TARGET_PREBUILT_KERNEL                    := device/samsung/coreprimelte/kernel
# Else uncomment below to build from source
#TARGET_KERNEL_SOURCE                     := kernel/samsung/coreprimelte
#TARGET_KERNEL_CONFIG                     := msm8916_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE            := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE        := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE          := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE        := 2147483648
BOARD_FLASH_BLOCK_SIZE                    := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR          := true

TARGET_USERIMAGES_USE_EXT4                := true
#TARGET_USERIMAGES_USE_F2FS               := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON                := true
TARGET_RECOVERY_PIXEL_FORMAT              := "RGB_565"

# TWRP Specific
TW_THEME                                  := portrait_mdpi
RECOVERY_GRAPHICS_USE_LINELENGTH          := true
#TW_INCLUDE_CRYPTO                        := true
TW_NO_USB_STORAGE                         := true
BOARD_SUPPRESS_SECURE_ERASE               := true
RECOVERY_SDCARD_ON_DATA                   := true
BOARD_HAS_NO_REAL_SDCARD                  := true
TW_NO_REBOOT_BOOTLOADER                   := true
TW_HAS_DOWNLOAD_MODE                      := true
TW_MTP_DEVICE                             := /dev/usb_mtp_gadget
# Original Path was /sys/devices/soc.0/1a00000.qcom,mdss_mdp/qcom,mdss_fb_primary.133/leds/lcd-backlight/brightness
TW_BRIGHTNESS_PATH                        := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.133/leds/lcd-backlight/brightness"
