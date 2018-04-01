Param 
(
	[string]$Workspace,
	[string]$BBUserName,
	[string]$BBPassword,
	[string]$BaseBranchName

)


try  {

    
	Write-Host Workspace $Workspace
	Write-Host BBUserName $BBUserName
	Write-Host BBPassword $BBPassword
	Write-Host BaseBranchName $BaseBranchName
	
        $RepositoryNamesitoryList='sam1', 'sam2'

 	Foreach ($RepositoryName in $RepositoryNamesitoryList)
	{

		Write-host "`n====== Repository Name:" $RepositoryName
		
		######### Clone Workspace
		try
		{
			Write-host "--------- Clone Repository:" $RepositoryName
			cd $Workspace
            git clone -b $BaseBranchName https://$BBUserName':'$EncodedPassword@bitbucket.org/automationanywhere/$RepositoryName.git

            #$command = "git clone https://"+$BBUserName+":"+$BBPassword+"@bitbucket.org/automationanywhere/"+$RepositoryName+".git"
	    #iex $command

	     if ($LASTEXITCODE -ne 0)
           {
             write-host *************LASTEXITCODE $LASTEXITCODE
                Exit 1
            }

		}
	

		catch
		{
			Write-Host ************* $_.Exception.Message 
			Exit 1
		}

}
}
