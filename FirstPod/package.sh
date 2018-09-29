#!/bin/bash

workspace="FirstPod.xcworkspace"
scheme="FirstPod"
configuration="Debug"
buildPath="./build"
archivePath="./build/JenkinsArchive"
exportPath="./build/JenkinsIPAExport"
PRODUCT_BUNDLE_IDENTIFIER="cn.xdf.leciMobile"

ExportOptionsPlist="./ExportOptionsPlist_dev.plist"


echo "更新日志——> $changelog"

echo "当前使用configuration-> $configuration"

echo "当前使用ExportOptionsPlist-> $ExportOptionsPlist"

#使用 TEAM 方式
DEVELOPMENT_TEAM="LRVJA59928"

DATE=$(date +%Y%m%d-%H%M%S) #当前时间

xcodebuild -workspace $workspace -scheme $scheme -configuration $configuration clean

if [ ! -d $buildPath ]; then
    mkdir $buildPath
fi

# 创建文件携带 日期作为区分，保存文件历史，以便后期查证
# rm -rf $archivePath
if [ ! -d $archivePath ]; then
    mkdir $archivePath
fi

xcodebuild -workspace $workspace -scheme $scheme -configuration $configuration archive DEVELOPMENT_TEAM=$DEVELOPMENT_TEAM -archivePath $archivePath/$scheme$DATE.xcarchive -allowProvisioningUpdates

#rm -rf $exportPath
if [ ! -d $exportPath ]; then
    mkdir $exportPath
fi

xcodebuild -exportArchive -exportOptionsPlist $ExportOptionsPlist -archivePath $archivePath/$scheme$DATE.xcarchive -exportPath $exportPath/$scheme$DATE -allowProvisioningUpdates

echo "\n\nTips:\n ${archivePath} ${exportPath} 下生成的文件最好保留一段时间, 可以帮助排查一些bug, 不需要是可以随时清理\n\n"
