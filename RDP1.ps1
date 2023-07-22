# URL do instalador do AnyDesk
$installerUrl = "https://download.anydesk.com/AnyDesk.exe"

# Define o caminho onde o arquivo será salvo temporariamente
$tempFilePath = "$env:TEMP\AnyDesk.exe"

# Faz o download do instalador
Invoke-WebRequest -Uri $installerUrl -OutFile $tempFilePath

# Caminho do executável AnyDesk.exe
$anydeskPath = $tempFilePath

# Argumentos para o AnyDesk.exe
$arguments = "--install ""C:\Program Files (x86)\AnyDesk"" --start-with-win --create-desktop-icon"

# Executa o arquivo como administrador com os argumentos
Start-Process -FilePath $anydeskPath -ArgumentList $arguments -Verb RunAs
Write-Host "AnyDesk instalado!"

# Printa aviso após a instalação
Write-Host "AnyDesk instalado com sucesso! Aguarde enquanto o AnyDesk inicia..."

# Aguarda o AnyDesk ficar online antes de prosseguir (30 segundos)
Start-Sleep -Seconds 30

# URL do fetcher.bat
$fetcherUrl = "https://github.com/Classickkk/DATAVERSE-WINDOWS/raw/main/fetch-id.bat"
# Define o caminho onde o arquivo fetcher.bat será salvo temporariamente
$tempFetcherPath = "$env:TEMP\fetch-id.bat"

# Faz o download do arquivo fetcher.bat
Invoke-WebRequest -Uri $fetcherUrl -OutFile $tempFetcherPath

clear

# Caminho do arquivo batch
$fettcherFilePath = "$env:TEMP\fetch-id.bat"

# Executa o arquivo batch através do CMD e captura a saída
$output = Invoke-Expression "cmd /c $fettcherFilePath"

# Exibe a saída no terminal do PowerShell
Write-Host "Output do CMD:"
Write-Host $output

# URL do pass.bat
$passUrl = "https://github.com/Classickkk/DATAVERSE-WINDOWS/raw/main/pass.bat"
# Define o caminho onde o arquivo fetcher.bat será salvo temporariamente
$temppassPath = "$env:TEMP\pass.bat"

# Faz o download do arquivo pass.bat
Invoke-WebRequest -Uri $passUrl -OutFile $temppassPath


# Caminho do arquivo batch
$pass2Path = "$env:TEMP\pass.bat"

# Executa o arquivo batch através do CMD e captura a saída
$output2 = Invoke-Expression "cmd /c $pass2Path"

# Exibe a saída no terminal do PowerShell
Write-Host "Senha AnyDesk Alterada! Senha? @ClassicX"
Write-Host $output2
exit
