Function Get-Path {
	[CmdletBinding()]
	Param([string] $target)
	
	if ($target) 
	{
		$pathFolders = $env:path.split(";")
		foreach ($folder in $pathFolders )
		{   
			$potential1 = $folder + "\" + $target 
			$potential2 = $folder + "\" + $target + ".exe"
			Write-Verbose "Trying $folder"
			if ((Test-Path $potential1) -or (Test-Path $potential2) ) 
			{			
				$output = New-Object -TypeName PSObject
				$output | Add-Member NoteProperty Path $folder				
				Write-Output $output
				break;
			}
		}
	}
	else 
	{
		Write-Error "No target specified"
	}
}

Set-Alias which Get-Path
Export-ModuleMember -alias which -function "Get-Path"