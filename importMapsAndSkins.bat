@echo off
set sourceDir=D:\toImport

for %%f in ("%sourceDir%\*") do (
    start "" "%%f"
)