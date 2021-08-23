## Misc:

### Files:

| File Name | Description |
| - | - |
| Remove-Cortana | Blocks Cortana from living |
| Add-Cortana | Reincarnates Cortana |
| Save-Bing-Background | Saves background of Bing Wallpaper |
| Folder-Locker | Creates an invisible locked and hidden folder named "Locker" |

### What They Do:

__| Remove-Cortana |__

Blocks that dump Cortana feature from the search bar, ugh yuck, adds to "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows Search" value set to false or 00000000

__| Add-Cortana |__ 

Re-adds Cortana to the search bar. I have no idea why you would use this?

__| Save-Bing-Background |__

When Bing Wallpapaer is download, you can download the wallpapaers it displays when running this batch file. Will be saved to %userprofile%\Pictures\Bing

__| Folder-Locker |__

Bat file that in the directory that you put the bat in, will create a Locker Folder on it's first run. Running it again would cause it to lock the folder, turing it "invisible", locked, and hidden. Running it again will undo all of this. While locked it is inaccessible. Must be run in the same directory as Locker Folder.

Version: `1.1.0`
