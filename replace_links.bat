@echo off
for %%f in (*.html) do (
    powershell -Command "(Get-Content '%%f') -replace 'https://mega\\.nz/file/[^\"]*', 'demo.mp4' | Out-File '%%f' -Encoding UTF8"
)
echo All video links replaced with demo.mp4