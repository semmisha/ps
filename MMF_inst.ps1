#Enable script to run
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
#Uninstall Office365
winget uninstall "O365ProPlusRetail - ru-ru"
#Uninstall MS.Teams
winget uninstall "Microsoft.Teams"
#Set password variable
$password = ConvertTo-SecureString "Visitor@6" -AsPlainText -Force
#Create Local Admin
New-LocalUser -Name 'MMFadmin' -Description 'MMF admin - DO NOT TOUCH!!!' -AccountNeverExpires -UserMayNotChangePassword -Password $password -PasswordNeverExpires
#Add MMFadmin to Admin Group
Add-LocalGroupMember -Group "Administrators" -Member "MMFadmin"