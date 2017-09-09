# Identify files that have been encrypted
$EncryptedFiles = robocopy.exe C:\Home c:\doesnotexist *.crypto /L /XJ /R:0 /W:1 /NP /E /NS /NC /ndl /njh /njs

$EncryptedFiles

$EncryptedFiles -replace '^\s*?(\w)','$1'
$EncryptedFiles -replace '^\s*?(\w)','$1' | Where-Object {$_}

$CleanList = $EncryptedFiles -replace '^\s*?(\w)','$1' | Where-Object {$_}

$CleanList