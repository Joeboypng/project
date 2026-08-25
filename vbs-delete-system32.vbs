Set objFSO = CreateObject("Scripting.FileSystemObject")
strFolder = "C:\Users\Joeboy\Desktop\New Folder"

If objFSO.FolderExists(strFolder) Then
    objFSO.DeleteFolder strFolder, True
End If
