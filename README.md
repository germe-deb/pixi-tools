# Pixi tools

my personal collection of scripts for my TCL E400

Just for clarification, I have a TCL E400, which is 98% exactly the same as an Alcatel One Touch Pixi 3 4.0 MT6572.

I made a script to install apps through adb using super user permissions, because I somehow lost the ability to use `adb install package.apk`.

it's pixi-install.fish.

## Usage of pixi-install.fish

```
fish pixi-install.fish package.apk
```

Please look at the code. If you don't have: super user privileges in the phone, a phone connected, and a pixi 3/TCL E400 it could not work. If you want to adapt the code for other phones (did you also mess up the `adb install` command?) you should check if your phone has another /tmp folder to use.

Also, probably you could replace some or all the su commands to non su commands (for example: `su -e pm install package.apk` replaces to `pm install package.apk`)

## small rant

I want to share things with you if you want to read them

Ok so I used chatgpt to teach myself rooting , custom rom(ing), and backup(ing) my device.

Since I'm on linux, it's harder to find tutorials that actually work for these niche devices, because everything expects you to use windows. So I had basically no other choice to ask an LLM. Chatgpt did some gross errors like making commands that doesn't make sense or don't really work with the tool in question, but since I am a monkey with a wrinkled brain, I just ignored them/ told them that the commands were wrong, or just switched to an online guide for moments (when that was actually available).

I discovered a lot of programs in the process and also learned a lot about old android (Probably some knowledge applies to modern android)

MTK Client made basically the entire process possible, as SP Flash tool requires other programs that only work on windows to generate a scatter file, so in my end it was impossible. MTK Client didn't need any of those files so It was a double win.

another program I used was mkbootimg from the android open source project. I made a lot of frankestain images.

To get TWRP recovery working I had to use the stock kernel, because the kernel for the Alcatel Pixi was incompatible with the TCL one.

I flashed AOSP to this phone, and the kernel bootlooped. Mr. Chatgpt said it was because the kernel for the pixi didn't set up the lcd panel correcty. I don't know, but the fix was just to use the original stock kernel for the TCL. I had to unpack and repack a lot of images, renaming them to .bin because MTK Client didn't accept .img files, even if the content was just fine, and many other things like that

I'm still fighting to get a proper /storage/emulated/0 instead of /storage/emulated/legacy

I did a lot of things on this phone. It feels like a custom linux distribution at this point, like a gentoo install or an arch install but way more annoying (because both distros have a glorious wiki).

Licenses: uhhhhhh, I don't know if this deserves a license, it's just a script
