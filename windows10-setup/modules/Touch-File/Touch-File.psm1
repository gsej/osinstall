Function Touch-File
{
    $file = $args[0]
    if($file -eq $null) {
        throw "No filename supplied"
    }
	
	$currentLocation = Get-Location
	
	$fullPath = [System.IO.Path]::Combine($currentLocation, $file)

    if(Test-Path $fullPath)
    {
        (Get-ChildItem $fullPath).LastWriteTime = Get-Date
    }
    else
    {
		[System.IO.File]::Create($fullPath) | Out-Null        
    }
}

Set-Alias touch Touch-File
Export-ModuleMember -alias touch -function "Touch-File"