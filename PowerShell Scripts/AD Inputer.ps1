Import-Module ActiveDirectory

$users = Import-csv "C:\Users\Server1\Desktop\AD\LDAP.csv"


ForEach ($user in $users) {

       $Username    = $user.username
       $Password    = $user.password
       $Firstname   = $user.firstname
       $Lastname    = $user.lastname
       $Department  = $user.department
       $OU1          = $user.ou1
       $OU2          = $user.ou2
       $OU3          = $user.ou3
       $dc1          = $user.dc1
       $dc2          = $user.dc2
       $dc3          = $user.dc3


       New-ADUser -Name "$Firstname $Lastname" -GivenName $Firstname -Surname $Lastname -Department $Department -UserPrincipalName "$Firstname.$Lastname" -Path "$OU1,$OU2,$OU3,$dc1,$dc2,$dc3" -AccountPassword (convertto-securestring $user.password -AsPlainText -Force) -ChangePasswordAtLogon $True

       echo "$Firstname $Lastname Account Created in AD"

}    
       
       