# Paranoid Android for OPPO Ace2

- 同步源码请看PA官方Github说明: [AOSPA](https://github.com/AOSPA/manifest)

## 编译准备

在 `vendor/aospa/products` 目录下修改 `AndroidProducts.mk` 在 `PRODUCT_MAKEFILES += \` 添加编译的机型配置文件:

```bash
    $(LOCAL_DIR)/op4ad9/aospa_op4ad9.mk
```

同时在下方的 `COMMON_LUNCH_CHOICES += \` 添加默认构建类型:

```bash
    aospa_op4ad9-userdebug
```

在 `vendor/aospa/products` 目录下新建 `op4ad9` 文件夹。在文件夹下新建 `aospa_op4ad9.mk` 并添加以下内容

```bash
# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq (aospa_op4ad9,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oplus/op4ad9/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := oppo
PRODUCT_DEVICE := op4ad9
PRODUCT_MANUFACTURER := oppo
PRODUCT_MODEL := PDHM00
PRODUCT_NAME := aospa_op4ad9

PRODUCT_SYSTEM_NAME := PDHM00
PRODUCT_SYSTEM_DEVICE := OP4AD9

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

endif
```

在 `device` 目录新建文件夹 `oplus` 把以下的 `device-tree` 克隆下来:

```bash
git clone -b topaz git@github.com:jacid233/android_device_oplus_OP4AD9.git op4ad9

git clone -b topaz git@github.com:jacid233/android_device_oplus_sm8250-common.git sm8250-common
```

在 `hardware` 目录克隆以下文件,主要是提供某些hal,sepolicy等内容

```bash
git clone -b topaz git@github.com:jacid233/android_hardware_oplus.git oplus
```

在 `kernel` 目录克隆内核源码

```bash
git clone -b topaz git@github.com:jacid233/android_kernel_oplus_sm8250.git msm-4.19
```

在 `vendor` 目录，克隆厂商 `blob` 相关文件

```bash
git clone -b topaz git@github.com:jacid233/android_vendor_oplus.git oplus
```

在 `vendor/qcom/opensource/audio-hal` 克隆以下文件(没有对应文件夹就创建)

```bash
git clone -b topaz-865 https://github.com/AOSPA/android_hardware_qcom_audio.git primary-hal
```

在 `hardware/qcom` 目录分别克隆以下文件

```bash
git clone -b topaz-865 https://github.com/AOSPA/android_hardware_qcom_display.git display

git clone -b topaz-legacy-component https://github.com/AOSPA/android_hardware_qcom_gps.git gps

git clone -b topaz-865 https://github.com/AOSPA/android_hardware_qcom_media.git media

```

在 `hardware/nxp` 目录分别克隆以下文件

```bash
git clone -b LA.QSSI.13.0.r1-09400-qssi.0 https://git.codelinaro.org/clo/la/platform/hardware/nxp/nfc.git nfc

git clone -b LA.QSSI.13.0.r1-09400-qssi.0 https://git.codelinaro.org/clo/la/platform/hardware/nxp/secure_element.git secure_element
```

在 `prebuilts` 目录克隆额外的编译器

```bash
git clone -b 17 https://gitlab.com/ThankYouMario/android_prebuilts_clang-standalone.git clang-standalone --depth=1
```

## `release-key` 的构建

> 请参考: https://wiki.lineageos.org/signing_builds

## 编译源码

运行源码目录下面的 `rom-build.sh` 即可,下面为一系列的示例

```bash
# 使用说明
./rom-build.sh -h

# 以user类型编译源码
./rom-build.sh op4ad9 -t user

# 以user构建 fastboot-flashable 的包
./rom-build.sh op4ad9 -t user -z

# 添加 release-key 并以user构建 
./rom-build.sh op4ad9 -t user -s <release-key的目录>

```