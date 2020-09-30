$arquivos = Get-ChildItem -Path ((Get-Location).Path) -Recurse | where { -not $_.psiscontainer }

foreach ($arquivo in $arquivos) {
   (Get-Content $arquivo.FullName -Raw).Replace("`r`n","`n") | Set-Content $arquivo.FullName -Force 
}
