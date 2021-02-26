#
# This policy configuration will be used by all exynos products
# that inherit from PixelDust
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/exynos/dynamic \
    device/pixeldust/sepolicy/exynos/system
else
BOARD_SEPOLICY_DIRS += \
    device/pixeldust/sepolicy/exynos/dynamic \
    device/pixeldust/sepolicy/exynos/vendor
endif
