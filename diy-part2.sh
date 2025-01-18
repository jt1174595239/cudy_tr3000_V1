#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/luci2/bin/config_generate

# Modify hostname
sed -i 's/LEDE/TR3000/g' package/base-files/luci2/bin/config_generate

# Modify timezone
sed -i 's/UTC/CST-8/g' package/base-files/luci2/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile

# Modify default SSID name
sed -i 's/LEDE/Cudy-0E2E/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
