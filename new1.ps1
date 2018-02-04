write-host "hiiiii"
$src=read-host
$dest=read-host
copy-item -path "$src" -destination "$dest"
#write-host $copy-item
#$filenames=get-childitem -path "$env:dest"
#foreach($file in $filenames)
#{
#write-host $file
#}
