Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' get script path
scriptPath = WScript.ScriptFullName
parentDir = fso.GetParentFolderName(scriptPath)

' create bath to lazer monitor
monitorScriptFile = fso.BuildPath(parentDir, "monitorLazer.bat")

' check(s)
If fso.FileExists(monitorScriptFile) Then
    shell.Run monitorScriptFile, 0, False
Else
    MsgBox "File not found: " & monitorScriptFile
End If