Set objFSO = CreateObject("Scripting.FileSystemObject")
strFolder = "C:\Users\young\Desktop\New folder"

If objFSO.FolderExists(strFolder) Then
    objFSO.DeleteFolder strFolder, True
End If