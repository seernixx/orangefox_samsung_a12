#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from device base config
$(call inherit-product, device/samsung/a12/twrp_a12.mk)

PRODUCT_NAME := fox_a12
PRODUCT_DEVICE := a12
PRODUCT_MODEL := SM-A125F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# OrangeFox build info
FOX_VERSION := R11.1
FOX_BUILD_TYPE := Unofficial
OF_MAINTAINER := Archer

# Target devices
OF_TARGET_DEVICES := a12,a125f,SM-A125F,a12nsxx

# OrangeFox feature flags
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_NO_MIUI_PATCHES := 1
OF_USE_GREEN_LED := 0
OF_ENABLE_LPTOOLS := 1
OF_SUPPORT_ALL_BLOCK_SU_MOUNTS := 1

# Display / UI (Samsung Galaxy A12: 720 x 1600, V-notch)
OF_SCREEN_H := 1600
OF_STATUS_H := 80
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# Samsung partition layout & recovery specifics
OF_NO_RELOAD_AFTER_DECRYPTION := 1
FOX_RECOVERY_INSTALL_PARTITION := /dev/block/platform/bootdevice/by-name/recovery
FOX_RECOVERY_BOOT_PARTITION := /dev/block/platform/bootdevice/by-name/boot
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1
