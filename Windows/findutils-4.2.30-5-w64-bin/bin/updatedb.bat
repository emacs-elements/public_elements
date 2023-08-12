@echo off
rem -----------------------------------------------------------------
rem
rem             UpdateDB.Bat
rem
rem Beside GNU Findutils, you will need ports of these utilities:
rem
rem    sort
rem    tr
rem    uniq
rem    gawk
rem
rem Only `sort' is required for the new-style data-base format; the
rem rest are used when creating old-style data-bases.
rem
rem ------------------------------------------------------------------
rem
rem This is a pale imitation of the original `updatedb.sh' (which see).
rem
rem          Written by Eli Zaretskii "<eliz@gnu.org>"
rem
rem ------------------------------------------------------------------
rem
if "%LIBEXECDIR%" == "" set LIBEXECDIR="%~dps0"\..\libexec
:again
If "%1" == "?" Goto help
If "%1" == "/?" Goto help
If "%1" == "-h" Goto help
If "%1" == "--help" Goto help
If "%1" == "--version" Goto version
Goto doit
:help
echo.
echo Usage: updatedb [dir1 dir2...]
echo   or   updatedb [--version] [--help]
echo.
Goto end
:version
echo GNU updatedb version 4.2.30 (for MS-Windows)
Goto end
:doit
If exist LOCATE_DB.n del /f LOCATE_DB.n
If not "%1" == "" GoTo GivenArgs
echo Looking in /
find / ( -type d -iregex "^[a-zA-Z]:/te?mp$" ) -prune -o -print0 | sort -z -f  | %LIBEXECDIR%\frcode -0 > LOCATE_DB.n
GoTo PipeDone
:GivenArgs
echo Looking in %*...
find %* ( -type d -iregex "^[a-zA-Z]:[/\]te?mp$" ) -prune -o -print0 | sort -z -f | %LIBEXECDIR%\frcode -0 > LOCATE_DB.n
:PipeDone
find LOCATE_DB.n -empty
If errorlevel 1 goto end
If exist locatedb.dat Del locatedb.dat
Ren LOCATE_DB.n locatedb.dat
:end
