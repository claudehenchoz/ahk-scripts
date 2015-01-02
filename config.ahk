StartFolder = C:\Users\Claude\z4.io\Code

;Re-map right Windows key to context menu key
RWin::AppsKey

;Sleep
^!z::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

;Shell shortcuts
^!p::Run powershell, %StartFolder%
^!c::Run cmd, %StartFolder%
^!.::Run explorer %StartFolder%, %StartFolder%

;Handy shortcut for PowerShell
^!w::SendInput Get-CimInstance -Namespace root/CIMV2 -ClassName Win32_

;Sync now
^!s::Run "C:\Users\Claude\Dropbox\SeedSync\downloads_from_seedbox.cmd", C:\Users\Claude\Dropbox\SeedSync\

;Run TF2
^!t::Run steam://rungameid/440

;Run Quake
^!q::Run steam://rungameid/282440

;Fun
^!v::Run "https://www.youtube.com/watch?feature=player_detailpage&v=Sb04wApMa_s#t=22"

;Run Notepad
^!n::
IfWinExist Untitled - Notepad
    WinActivate
else
    Run Notepad
return
