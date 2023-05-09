# Modded Apps4Flip Launcher

## Description

Modded to show all USER installed applications not only those under the "Apps4Flip" namespace (com.android.cts).
Also, renames sticky notification title and app name.

## Process

-   Decode app using apktool - `apktool d app_launcher.apk`
-   Decompile app using Jadx GUI to view real source -
    -   Locate relavent strings and edit apktool-generated smali
    -   Tip: Utilize GPT4 to convert desired Java code changes into smali (if it's more than updating a string). It does a really good job.
-   Compile APK from smali using apktool - `apktool b app_launcher`
-   Sign APK -
    -   Generate key - `keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias <alias>`
    -   Apply key - `jarsigner -keystore key.jks app_launcher/dist/app_launcher.apk <alias>`
-   Install APK to flip phone
