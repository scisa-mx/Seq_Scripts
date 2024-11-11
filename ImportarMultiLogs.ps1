# Ruta de la carpeta donde están los archivos JSON de logs
$logFolder = "[Ruta de la carpeta donde están los archivos JSON de logs]"
# Ruta de clef.exe
$clefExePath = "[Ruta de clef.exe]"

# Para cada archivo JSON en la carpeta de logs, lo envía a Seq usando clef.exe
Get-ChildItem -Path $logFolder -Filter *.json | ForEach-Object {
    $filePath = $_.FullName
    Write-Host "Importando $filePath a Seq..."
    # Ejecuta clef.exe para enviar el archivo a Seq
    & $clefExePath -i $filePath --out-seq="http://localhost:5341"
}
