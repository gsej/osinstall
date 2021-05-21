
$servicesToStop = @("TCBuildAgent", "TeamCity", "OctopusDeploy", "MSSql`$SqlExpress", "SqlBrowser")
$servicesToStart = @("SqlBrowser", "MSSql`$SqlExpress",  "OctopusDeploy", "TeamCity","TCBuildAgent")

function Get-CIServices{
	$servicesToStart | foreach{Write-Host $_}
}

function Stop-CIServices{
	$servicesToStop | foreach{Stop-Service $_}
}

function Start-CIServices{
	$servicesToStart | foreach{Start-Service $_}
}


export-modulemember -function "Get-CIServices" 
export-modulemember -function "Stop-CIServices" 
export-modulemember -function "Start-CIServices" 


