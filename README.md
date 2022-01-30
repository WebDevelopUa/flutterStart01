Flutter Start 01 - App v.2.8.1
---

[DEMO of Web version]()

```
flutter run
flutter run -d chrome
flutter build web
flutter config --enable-web
```

---------------------

* [Entrypoint](lib/main.dart)
* [Packages](pubspec.yaml)

---------------------

### TODO

* PATH: `C:\Users\XXX\development\sdks` || `D:\flutter\bin`
* flutter_windows_2.8.1-stable => `flutter`
* Android SDK version 30.0.3
* Configure => Virtual Device Manager => Pixel 5 API 32 => Android API.32 => Download
* Configure => SDK Manager => SDK Tools => Android SDK Command-line Tool
* `d:\flutter doctor --android-licenses`
* `d:\projects\flutter flutter create flutter_01`
* `d:\projects\flutter_01 flutter run`
* To hot restart changes while running, press in Terminal: "r" or "R".
* Visual Studio Code => `lib\main.dart` => right click => Run Without Debugging
* `d:\projects\flutter_01 dart fix`
* `netsh winsock reset`

---------------------

## Installation info

* [Get Started](https://docs.flutter.dev/get-started)
* [Windows install](https://docs.flutter.dev/get-started/install/windows)
    * [2.8.1](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.1-stable.zip)
    * [other](https://docs.flutter.dev/development/tools/sdk/releases
    * Extract the zip file and place the contained flutter in the desired installation location for the Flutter SDK (for
      example, `C:\Users\<your-user-name>\Documents`).
    * Do not install Flutter in a directory like `C:\Program Files\` that requires elevated privileges.
    * From the Start search bar, enter ‘env’ and select Edit environment variables for your account
    * Under User variables check if there is an entry called Path
    * [Install Android Studio](https://developer.android.com/studio)
    * [commandlinetools-win-8092744_latest.zip](https://developer.android.com/studio#:~:text=commandlinetools%2Dwin%2D8092744_latest.zip)
    * Android SDK
    * [Dart SDK archive](https://dart.dev/get-dart/archive)
    * [JDK 17](https://www.oracle.com/java/technologies/downloads/#jdk17-windows)
* [macOS install](https://docs.flutter.dev/get-started/install/macos)
* [Linux install](https://docs.flutter.dev/get-started/install/linux)
* [Android Studio Fix](https://intellij-support.jetbrains.com/hc/en-us/articles/360007568559-Start-Failed-Internal-error-recovering-IDE-to-the-working-state-after-the-critical-startup-error)
  => `netsh winsock reset`
  clear PATHs: `C:\Users\xxx\AppData\Roaming\JetBrains` ||`C:\Users\xxx\AppData\Local\Google`
  || `C:\Users\xxx\AppData\Local\npm-cache`
* Android Studio => Appearance => Path Variables => KOTLIN_BUNDLED C:
  \Users\Dell\AppData\Roaming\Google\AndroidStudio2021.1\plugins\Kotlin\kotlinc
* Android SDK => Optimize Disk Space

------------------------

### Build and Deploy a Flutter Web project on [Vercel](https://vercel.com)

* Framework Preset: `Other`
* Build Command: `flutter/bin/flutter build web --release`
* Build Command: `flutter/bin/flutter build web`
* Output Directory: `build/web`
* Install Command:
  `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && ls && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web`
* Or Solution: you can just use "git checkout 2.8.1" to use a specific version. Example of my bash script:
  `#!/bin/bash  if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git -b stable; fi && ls && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter pub get`
* `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter pub get`
* `#!/bin/bash  if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git  -b stable; fi && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter doctor && flutter/bin/flutter clean && flutter/bin/flutter pub get`
* `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter doctor --android-licenses && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web && flutter/bin/flutter pub get`
* `if cd flutter; then git pull && cd .. ; else git clone https://github.com/flutter/flutter.git; fi && cd flutter && git checkout 2.8.1 && cd .. && flutter/bin/flutter clean && flutter/bin/flutter config --enable-web && flutter/bin/flutter pub get`

[Unsound null safety](https://dart.dev/null-safety/unsound-null-safety)
