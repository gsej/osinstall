function prompt {  
	$origLastExitCode = $LASTEXITCODE
	$date = Get-Date;
	Write-Host "[$($date.Hour):$($date.Minute):$($date.Second)] " -NoNewLine
	Write-Host $ExecutionContext.SessionState.Path.CurrentLocation -NoNewline

   	Write-VcsStatus
   	$LASTEXITCODE = $origLastExitCode
	"$('>' * ($nestedPromptLevel + 1)) "
}