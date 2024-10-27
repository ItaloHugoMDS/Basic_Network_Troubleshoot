param

	(
		[Parameter(Position=0)]
		[string]$Host_Address
	)

function Basic_Troubleshoot()

	{	
		$File_Name = "$($Host_Address + '---' + $(Get-Date -Format 'yyyy-MM-dd---HH-mm-ss')).txt"
		nslookup $Host_Address | Add-Content -Path ".\$File_Name"
		ping $Host_Address | Add-Content -Path ".\$File_Name"
		tracert $Host_Address | Add-Content -Path ".\$File_Name"
		Invoke-Item ".\$File_Name"
	}

Basic_Troubleshoot