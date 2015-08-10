Switch-AzureMode -name AzureResourceManager
Get-AzureResourceGroup | where {$_.Location -like "westus" } | Remove-AzureResourceGroup -Force -Verbose

Get-AzureResourceGroup | ft -AutoSize