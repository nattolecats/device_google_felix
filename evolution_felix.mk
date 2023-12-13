#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/felix/aosp_felix.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)
$(call inherit-product, device/google/felix/device-evolution.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Fold
PRODUCT_NAME := evolution_felix

# Boot animation
TARGET_SCREEN_HEIGHT := 2092
TARGET_SCREEN_WIDTH := 1080

# Evolution X configs
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_FOLD := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := $(TARGET_SCREEN_WIDTH)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=felix \
    PRIVATE_BUILD_DESC="felix-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/felix/felix:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/felix/felix-vendor.mk)
