::RemovePrefix.bat  prefix  fileMask
:: Ref https://stackoverflow.com/
@echo off
setlocal
for %%A in ("%~1%~2") do (
  set "fname=%%~A"
  call ren "%%fname%%" "%%fname:*%~1=%%"
)