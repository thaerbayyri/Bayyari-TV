$adb='C:\Users\thaer\AppData\Local\Android\Sdk\platform-tools\adb.exe'
$out='E:\nashamaiptv page\apps\BAYYARI player\artifacts\module2'
$apk='E:\nashamaiptv page\apps\BAYYARI player\app\build\outputs\apk\debug\app-debug.apk'
$pkg='com.bayyari.tv.debug'
Write-Output 'Checking package...'
$has = & $adb -s emulator-5554 shell pm list packages $pkg
if (-not ($has -match $pkg)) {
  Write-Output 'Installing APK...'
  & $adb -s emulator-5554 install -r "$apk" | Out-Null
} else {
  Write-Output 'APK already installed'
}
Start-Sleep -Seconds 1
Write-Output 'Capturing frame1'
& $adb -s emulator-5554 exec-out screencap -p > "$out\\player_frame1.png"
Start-Sleep -Seconds 2
Write-Output 'Capturing frame2'
& $adb -s emulator-5554 exec-out screencap -p > "$out\\player_frame2.png"
$h1=(Get-FileHash "$out\\player_frame1.png" -Algorithm SHA256).Hash
$h2=(Get-FileHash "$out\\player_frame2.png" -Algorithm SHA256).Hash
Write-Output "HASH1:$h1"
Write-Output "HASH2:$h2"
$pid=( & $adb -s emulator-5554 shell pidof $pkg ).Trim()
if ($pid) {
  & $adb -s emulator-5554 logcat --pid=$pid -d > "$out\\player_logcat.txt"
  Write-Output 'LOG_SAVED'
} else {
  Write-Output 'NO_PID'
}
