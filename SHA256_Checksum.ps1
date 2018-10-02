# Calculate Checksum of file(s)
$hash1 = Get-FileHash 'C:\Users\Matthew Schmolke\Desktop\1.txt' -Algorithm SHA256 | Out-File -FilePath 'C:\Users\Matthew Schmolke\Desktop\hash1.txt'
