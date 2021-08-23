## Options:

### Files:

| File Name | Description |
| - | - |
| Remove-ShareWithSkype | Removes the "Share With Skype" option |
| Add-ShareWithSkype |Re-Adds the "Share With Skype" option if removed |
| Restart-Explorer | Restarts Explorer so that any changes that `Remove-ShareWithSkype` or `Add-ShareWithSkype` applies, will properly show |

### What They Do:

__| Remove-ShareWithSkype |__

Indexs "HKEY_CLASSES_ROOT\PackagedCom\ClassIndex" hives for any key with the SypeApp name, adds the version to "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" so that it does not appear and to %localappdata%\WindowsExtras so that if Add-ShareWithSkype is run on the user, it will detect the correct versions of Skype and only unblock those

__| Add-ShareWithSkype |__ 

Readd the Share with Skype option to the right-click menu. Indexes the .txt files in %localappdata%\WindowsExtras, and if version of Skype that is Blocked s on of the names of the txt's, it will unblock it

__| Restart-Explorer |__

Simple batch file with prompt that kills then restarts Explorer.exe

Version: `1.1.0`
