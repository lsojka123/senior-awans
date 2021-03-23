@echo off
set count=10
set fail=%1
set /a pass=count-fail
:passloop
echo TEST PASS
set /a pass=pass-1
if %pass%==0 goto failloop
goto passloop
:failloop
echo TEST FAIL 1>&2
set /a fail=fail-1
if %fail%==0 goto exitloop
goto failloop
:exitloop