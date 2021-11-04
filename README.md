# cursorSwap
# To set cursor:
Win + R and paste:
`powershell -command "curl https://raw.githubusercontent.com/jfcbooth/cursorSwap/main/set.ps1 -o $env:USERPROFILE\a.ps1"; powershell -file $env:USERPROFILE\a.ps1;rm $env:USERPROFILE\a.ps1;`

# To unset cursor
Win + R and paste:
```powershell -command "curl https://raw.githubusercontent.com/jfcbooth/cursorSwap/main/unset.ps1 -o $env:USERPROFILE\a.ps1"; powershell -file $env:USERPROFILE\a.ps1;rm $env:USERPROFILE\a.ps1;```