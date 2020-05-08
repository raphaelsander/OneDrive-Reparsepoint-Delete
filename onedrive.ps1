Get-ChildItem -recurse -force | Where-Object { $_.Attributes -match "ReparsePoint" } | foreach-object -Process {fsutil reparsepoint delete $_.fullname}
