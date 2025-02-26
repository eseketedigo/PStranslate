$original = Read-Host -Prompt "Texto a traducir"

$Text = $original

$TargetLanguage = “de”
$Uri = “https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=$($TargetLanguage)&dt=t&q=$Text”
$Response = Invoke-RestMethod -Uri $Uri -Method Get

$Translation = $Response[0].SyncRoot | foreach { $_[0] }

write-host $Translation