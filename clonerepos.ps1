Param 
(
	[string]$Workspace,
	[string]$BBUserName,
	[string]$BBEmail,
	[string]$BBPassword,
	[string]$BaseBranchName 
)

New-Item -ItemType Directory $BBUserName
cd $BBUserName
New-Item -ItemType File $BBEmail
New-Item -ItemType File $BBPassword
New-Item -ItemType File $BaseBranchName
