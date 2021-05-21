Function Get-GitStatuses([string] $repo_folder)
{
	if(-not($repo_folder))
	{   
		$repo_folder = "C:\local\git"
    }

	$folders = Get-ChildItem -Path $repo_folder

	$git_repositories = @()
	$other_folders = @()

	
	foreach ($folder in $folders) 
	{
		if (Test-Path "$folder\.git") 
		{
		   $git_repositories += $folder
		}
		else 
		{
			$other_folders += $folder
		}
		
	}
	
	DisplayGitRepositories($git_repositories)
	DisplayOtherFolders($other_folders)
}

Function DisplayGitRepositories($git_repositories)
{
	foreach ($folder in $git_repositories) 
	{
		Write-Host("-----------------------------")
		Write-Host ("$folder is a repository")
		Write-Host("-----------------------------")
		& git --git-dir=$folder\.git --work-tree=$folder\ status
		Write-Host("")
	}
}

Function DisplayOtherFolders($other_folders)
{
	Write-Host("-----------------------------")
	foreach ($folder in $other_folders) 
	{    
		Write-Host ("$folder is not a git repository")    
		Write-Host("")
	}
	Write-Host("-----------------------------")
}

Set-Alias gitstatuses Get-GitStatuses
Export-ModuleMember -alias gitstatuses -function "Get-GitStatuses"




