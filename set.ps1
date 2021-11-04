curl https://github.com/jfcbooth/cursorSwap/blob/main/cursor.cur?raw=true -o $env:USERPROFILE/cursor.cur;New-ItemProperty -Path "HKCU:\Control Panel\Cursors" -Name "OriginalCursor" -Value $(Get-ItemProperty "Registry::HKCU\Control Panel\Cursors")."Arrow";Set-ItemProperty -Path "HKCU:\Control Panel\Cursors" -Name "Arrow" -Value "$env:USERPROFILE/cursor.cur";$CSharpSig = @'
[DllImport("user32.dll", EntryPoint = "SystemParametersInfo")]
public static extern bool SystemParametersInfo(uint uiAction,uint uiParam,uint pvParam,uint fWinIni);
'@;$CursorRefresh = Add-Type -MemberDefinition $CSharpSig -Name WinAPICall -Namespace SystemParamInfo -PassThru;$CursorRefresh::SystemParametersInfo(0x0057,0,$null,0)