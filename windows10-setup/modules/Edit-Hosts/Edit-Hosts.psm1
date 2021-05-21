Function Edit-Hosts()
{
	$editor = "c:\Program Files\Notepad++\Notepad++";	
	& $editor "c:\windows\system32\drivers\etc\hosts"		
}

Export-ModuleMember  -function "Edit-Hosts"





