#!/usr/bin/fish
printf "================================\\n"
set_color brgreen ; printf "installing the application:\\n"
echo $argv ; set_color normal
printf "================================\\n"
adb push $argv /data/local/tmp/app.apk && adb shell su -e pm install -r /data/local/tmp/app.apk
adb shell su -e rm /data/local/tmp/app.apk
