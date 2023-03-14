#!/bin/sh

BASE_PATH=$(
  cd $(dirname "$0");
  pwd
)

PDFM_DISP_CRACK="${BASE_PATH}/prl_disp_service"
PDFM_DISP_DST="/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app/Contents/MacOS/prl_disp_service"
PDFM_DISP_ENT="${BASE_PATH}/ParallelsService.entitlements"

LICENSE_FILE="${BASE_PATH}/licenses.json"
LICENSE_DST="/Library/Preferences/Parallels/licenses.json"

echo "[*] Kill Parallels Desktop"

killall -9 prl_client_app 2>/dev/null
sudo pkill -9 prl_disp_service 2>/dev/null

echo "[*] Copy prl_disp_service"

sudo cp -f "${PDFM_DISP_CRACK}" "${PDFM_DISP_DST}"
sudo chown root:wheel "${PDFM_DISP_DST}"
sudo chmod 755 "${PDFM_DISP_DST}"

echo "[*] Sign prl_disp_service"

sudo codesign -f -s - --timestamp=none --all-architectures --entitlements "${PDFM_DISP_ENT}" "${PDFM_DISP_DST}"

echo "[*] Copy licenses.json"

sudo rm -f "${LICENSE_DST}" > /dev/null
sudo cp "${LICENSE_FILE}" "${LICENSE_DST}"
sudo chown root:wheel "${LICENSE_DST}"
sudo chmod 444 "${LICENSE_DST}"

echo "[*] Crack over"
echo "AikoCute-Offical"
