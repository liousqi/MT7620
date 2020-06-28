#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.19.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#添加软件包 
git clone https://github.com/rayqu918/openwrt-packages/tree/master/luci-app-passwall
git clone https://github.com/rayqu918/openwrt-packages/tree/master/luci-app-ssr-plus

#更新
./scripts/feeds update -a
./scripts/feeds install -a
