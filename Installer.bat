@echo off
wsl --list >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Enabling WSL and Virtual Machine Platform...
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

    echo.
    echo WSL and Virtual Machine Platform enabled. A restart is required to continue.
    set /p choice="Do you want to restart now? (y/n): "
    if /i "%choice%"=="y" (
        shutdown /r /t 5
        exit /b
    ) else (
        echo Please restart your computer manually later.
        exit /b
    )
)

wsl --set-default-version 2
wsl --install -d kali-linux
