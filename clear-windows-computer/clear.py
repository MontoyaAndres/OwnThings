import tempfile, shutil, os

# Permissions from powershell
permissions = "Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force"

# Getting folders.
temp = tempfile.gettempdir()
prefetch = "C:\WINDOWS\Prefetch"

# Removing all trash from folders.
shutil.rmtree(temp, ignore_errors=True)
shutil.rmtree(prefetch, ignore_errors=True)

# Giving permissions to system.
os.system('powershell.exe '+permissions)

# Cleaning events logs.
os.system('powershell.exe .\clearEventLog.ps1')
