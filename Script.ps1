
#IP List File
$IPs = "IPs.txt"

#IP List Input
$IP_list = Get-Content "$env:USERPROFILE\Desktop\$IPs"

#Script Output File
$Output_file_location = "$env:USERPROFILE\Desktop"

#File Name
$File = "Test.txt"

New-Item "$Output_file_location\Desktop\$file"

foreach ($IP in $IP_List) { $Info = Resolve-DnsName "$IP"; $Info.NameHost | Out-File -Append  "$Output_file_location\Desktop\$file" } 
