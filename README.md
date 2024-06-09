## Getting Started

### step 1 ติดตั้ง flutter
```
https://docs.flutter.dev/get-started/install
```

### step 2 ติดตั้ง flutter version management
```
https://fvm.app/docs/getting_started/installation
```

### step 3 ติดตั้ง fvm flutter ใน version 3.19.2
```
fvm install 3.19.2
```

### step 4 ใช้ flutter version 3.19.2
```
fvm use 3.19.2
```
### step 5 รัน Project
#### Browser
```
fvm flutter run -d chrome --web-renderer html
```

รันแบบระบุ port
```
fvm flutter run -d chrome --web-renderer html --web-hostname localhost --web-port 5000
```

#### onDevice
```
fvm flutter run หรือ fvm flutter run --release
```

## Build APP

### IOS
```
fvm flutter build ios --build-name=1.0 --build-number=xxx --obfuscate --split-debug-info=symbols/ios
```

### Android
```
fvm flutter build appbundle --build-name=1.0 --build-number=xxx --target-platform android-arm,android-arm64,android-x64 --obfuscate --split-debug-info=symbols/android/aab
```

### Android apk
```
fvm flutter build apk --build-name=1.0 --build-number=xxx  --obfuscate --split-debug-info=symbols/android/apk
```

### Web
```
fvm flutter build web
fvm flutter build web --release --web-renderer html
```

fvm flutter packages pub run build_runner watch