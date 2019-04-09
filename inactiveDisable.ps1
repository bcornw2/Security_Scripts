$timespan = New-Timespan –Days 90
Search-ADAccount –UsersOnly –AccountInactive –TimeSpan $timespan -SearchBase "OU=EXOS,OU=LeadingAge Users,OU=LeadingAge,DC=LeadingAge,DC=local" |where {$_.enabled} |where {$_.PasswordNeverExpires -eq $False} |Disable-ADAccount
#written by sam rosenblum
