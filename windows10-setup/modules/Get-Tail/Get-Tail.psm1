Function Get-Tail {
	[CmdletBinding()]
	Param([string] $target)
	
	if ($target) 
	{
		Get-Content $target -wait
	}
	else 
	{
		Write-Error "No target specified"
	}
}

Set-Alias tail Get-Tail
Export-ModuleMember -alias tail -function "Get-Tail"