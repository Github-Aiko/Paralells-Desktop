# Parallels Desktop

Crack for Parallels Desktop 18 - Latest

- [x] Support Intel
- [x] Support Apple Silicon (M1)
- [x] Network
- [x] USB

# Usage

1. Install Parallels Desktop 18.0.1-53056.

    https://download.parallels.com/desktop/v18/18.0.1-53056/ParallelsDesktop-18.0.1-53056.dmg

2. Exit parallels account.

3. Download this repo file.

4. Extract and run Terminal in this directory.

5. `chmod +x ./install.sh && ./install.sh`


# Auto Matic

install wget
```
wget https://raw.githubusercontent.com/AikoCute-Offical/Paralells-Desktop/dev/auto.sh && chmod +x ./auto.sh && ./auto.sh
```

# Manual

1. Exit Parallels Desktop

```
killall -9 prl_client_app
killall -9 prl_disp_service
```

2. Copy crack file

```
sudo cp -f prl_disp_service "/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
sudo chown root:wheel "/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
sudo chmod 755 "/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
```

3. Copy licenses.json

```
sudo rm -f "/Library/Preferences/Parallels/licenses.json"
sudo cp licenses.json "/Library/Preferences/Parallels/licenses.json"
sudo chown root:wheel "/Library/Preferences/Parallels/licenses.json"
sudo chmod 444 "/Library/Preferences/Parallels/licenses.json"
```

4. Sign

```
sudo codesign -f -s - --timestamp=none --all-architectures --deep --entitlements ParallelsService.entitlements "/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
```
