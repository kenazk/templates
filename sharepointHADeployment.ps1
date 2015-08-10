$d = get-date
$rgname = "existingip-" + $d.Year + $d.Month + $d.Day + '-' + $d.Hour + $d.Minute
New-AzureResourceGroup -Name $rgname `
    -TemplateFile X:\Sharepoint\SharepointNonHA\TEST-ExistingStorageAccountAndPublicIP.json `
    -Verbose

$rgname = "SharepointHA-" + $d.Year + $d.Month + $d.Day + '-' + $d.Hour + $d.Minute + $d.Second
New-AzureResourceGroup -Name $rgname `
    -TemplateFile X:\Sharepoint\SharepointHA\mainTemplate.json `
    -TemplateParameterFile X:\Sharepoint\SharepointHA\parameters.json `
    -Verbose 


   