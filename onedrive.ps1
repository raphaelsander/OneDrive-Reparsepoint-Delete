Get-ChildItem -recurse -force | Onde-objeto {$ _. Atributos -match "ReparsePoint"} | foreach-object -Process {fsutil reparsepoint delete $ _. fullname}
