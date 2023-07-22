# URL do arquivo para download
$url = "https://www.e2esoft.com/download/vsc"

# Define o caminho onde o arquivo será salvo temporariamente
$tempFilePath = "$env:TEMP\vsc_installer.exe"

# Faz o download do arquivo
Invoke-WebRequest -Uri $url -OutFile $tempFilePath

# Executa o instalador com opção silenciosa
Start-Process -FilePath $tempFilePath -ArgumentList "/S" -Wait

# Exibe o aviso após a instalação ser concluída
Write-Host "O programa foi instalado com sucesso!"

Set-Service -Name "Audiosrv" -StartupType Automatic
Start-Service -Name "Audiosrv"

Write-Host "Iniciando Serviço de Audio!"
Write-Host "Audio Reparado!"
