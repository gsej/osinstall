Set-StrictMode -Version Latest

Function Get-Choco()
{
	$list_of_packages = & {choco list --local-only -r}	
	
	$exclude = @('utorrent', 'mpc-hc', 'evernote', 'allway-sync', 'setpoint')

	foreach ($package in $list_of_packages) 
	{
		$package_name = $package.Split('|')[0];	

		if (-not ($exclude -contains $package_name))
		{
			Write-Host("cinst $package_name -y");
		}	
	}	
}

Export-ModuleMember  -function "Get-Choco"




