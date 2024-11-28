Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' get script path
scriptPath = WScript.ScriptFullName
parentDir = fso.GetParentFolderName(scriptPath)

' create bath to lazer monitor
importScriptFile = fso.BuildPath(parentDir, "importMapsAndSkins.bat")

' check(s)
If fso.FileExists(importScriptFile) Then
    shell.Run importScriptFile, 0, False
Else
    MsgBox "File not found: " & importScriptFile
End If