$csvFilePath = 'C:\Users\Matthew Schmolke\Desktop\RAMP\hashes2.csv'
$files = Get-ChildItem 'C:\Users\Matthew Schmolke\Desktop\RAMP' -File
$hashes = foreach ($file in $Files){
    Write-Output (New-Object -TypeName PSCustomObject -Property @{
        FileName = $file.Name
        SHA256 = Get-FileHash $file.FullName -Algorithm SHA256 | Select-Object -ExpandProperty Hash
        })
}

$hashes | Export-Csv -NoTypeInformation -Path $csvFilePath

        