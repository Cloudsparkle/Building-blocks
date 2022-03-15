# Try loading Citrix Powershell modules, exit when failed
If ((Get-PSSnapin "Citrix*" -EA silentlycontinue) -eq $null)
{
  try {Add-PSSnapin Citrix* -ErrorAction Stop }
  catch {Write-error "Error loading Citrix Powershell snapins"; Return }
}
