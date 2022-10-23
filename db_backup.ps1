$source = 'D:\ATLAS DATABASE BACK-UP\ATLAS'
#Source is the main backup 

$destination = 'E:\NAV'
@(Get-ChildItem $source -Filter *.bak | Sort LastWriteTime -Descending)[0] | % { Copy-Item -path $_.FullName -destination $("$destination\Atlas_Latest_backup.bak") -force}
#destination is the external