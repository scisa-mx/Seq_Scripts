# Ruta de clef.exe
$clefExePath = "[Ruta de clef.exe]"

Write-Host "Importando $filePath a Seq..."
& $clefExePath -i "[ruta del Json]" --out-seq="http://localhost:5341"

