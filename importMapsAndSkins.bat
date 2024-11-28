@echo off
set sourceDir=C:\Users\User\Documents\ImportLater

for %%f in ("%sourceDir%\*") do (
    start "" "%%f"
)
