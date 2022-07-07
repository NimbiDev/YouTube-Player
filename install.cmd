@echo off

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
	echo This setup needs admin permissions. Please run this file as admin.
	pause
	exit
)

set NULL_VAL=null
set NODE_VER=%NULL_VAL%
set SETUP_DIR="%SystemDrive%\\Apps\\YouTube Player"
set NODE_EXEC=node-v16.15.1-x86.msi

node -v >.tmp_nodever
set /p NODE_VER=<.tmp_nodever
del .tmp_nodever

IF "%NODE_VER%"=="%NULL_VAL%" (
	echo.
	echo Node.js is not installed! Please press a key to download and install it from the website that will open.
	PAUSE
	start "" http://nodejs.org/dist/v16.15.1/%NODE_EXEC%
	echo.
	echo.
	echo After you have installed Node.js, press a key to shut down this process. Please restart it again afterwards.
	PAUSE
	EXIT
) ELSE (
	echo A version of Node.js ^(%NODE_VER%^) is installed. Proceeding...
)

cd ../..
echo Installing yarn ...
call npm install --location=global yarn
REM echo Installing yarn ...
REM call npm install --location=global yarn
cd "%SETUP_DIR%\\src"
echo Installing Package Dependencies ...
call yarn install
REM echo Installing Package Dependencies ...
REM echo yarn install
echo Packaging App ...
call yarn package
REM echo Packaging App ...
REM echo yarn package
echo DONE!
timeout /t 05