
# Kali Linux WSL Installer Script (unoffical)

This script automates the installation of Kali Linux on Windows Subsystem for Linux (WSL).
It handles enabling WSL and the Virtual Machine Platform if not already enabled and provides an option to restart the system when required.

Features:
- Automatically enables WSL and Virtual Machine Platform if not installed.
- Sets WSL 2 as the default version.
- Installs Kali Linux for WSL using the command `wsl --install -d kali-linux`.
- Prompts the user for confirmation before restarting the system.

Requirements:
- Windows 10 or Windows 11 with WSL support.
- Administrator privileges to run the script.

Usage:
1. Run the script as Administrator:
   - Right-click on the `.bat` file and choose "Run as Administrator".

2. Alternatively, you can run it from the command line:
   - Open Command Prompt as Administrator and run:
     .\Installer.bat

3. Follow the instructions provided by the script, including the prompt to restart your computer if necessary.
