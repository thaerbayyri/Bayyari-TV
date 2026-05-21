$adb = 'C:\Users\thaer\AppData\Local\Android\Sdk\platform-tools\adb.exe'
Write-Output "Waiting for adb device..."
& $adb wait-for-device
Write-Output "Device connected, polling for boot..."
for ($i=0; $i -lt 180; $i++) {
  $v = & $adb -s emulator-5554 shell getprop sys.boot_completed 2>$null
  if ($v -and $v.Trim() -eq '1') {
    Write-Output "BOOTED"
    exit 0
  }
  Start-Sleep -Seconds 1
}
Write-Output "BOOT_TIMEOUT"
exit 1
