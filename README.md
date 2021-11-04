# cursorSwap
# H1 To set cursor:
powershell -command "curl https://raw.githubusercontent.com/jfcbooth/cursorSwap/main/set.ps1 -o $env:USERPROFILE\a.ps1"; powershell -file $env:USERPROFILE\a.ps1;rm $env:USERPROFILE\a.ps1;

# H1 to unset cursor
powershell -command "curl https://raw.githubusercontent.com/jfcbooth/cursorSwap/main/unset.ps1 -o $env:USERPROFILE\a.ps1"; powershell -file $env:USERPROFILE\a.ps1;rm $env:USERPROFILE\a.ps1;