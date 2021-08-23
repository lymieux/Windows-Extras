# ___Windows Extras___

### __Adding Extras__
> ___Windows Extras___ is a repo that contains the files for cetain 
> Windows extras that I find useful and in constant need of
> `Windows Only`

### __Folders:__

#### RAA (Run as Addons) - 
##### Files:
| File Name | Description |
| - | - |
| Add-RunAsInvoker | Adds `Run as invoker` |
| Add-RunAsHighest | Adds `Run as highest` |
| Add-RAI-and-RAH | Adds `Run as invoker` and `Run as highest` |
| Remove-RunAsInvoker | Removes `Run as invoker` |
| Remove-RunAsHighest | Removes `Run as highest` |
| Remove-RAI-and-RAH | Removes `Run as invoker` and `Run as highest` |

#### Options - 
##### Files:
| File Name | Description |
| - | - |
| Remove-ShareWithSkype | Removes the "Share With Skype" option |
| Add-ShareWithSkype |Re-Adds the "Share With Skype" option if removed |
| Restart-Explorer | Restarts Explorer so that any changes that `Remove-ShareWithSkype` or `Add-ShareWithSkype` applies, will properly show |

#### Miscellaneous - 
##### Files:
| File Name | Description |
| - | - |
| Remove-Cortana | Blocks Cortana from living |
| Add-Cortana | Reincarnates Cortana |
| Save-Bing-Background | Saves background of Bing Wallpaper |
| Folder Locker | Creates an invisible locked and hidden folder named "Locker" |

### Installation
> Simply download the file that you wish to add, and double click it to run it.
> __If it is a .reg file:__ 
> You will be prompted with a Registry Editor confirmation box, choose accordingly!
> You can delete the downloaded file(s) afterwards if you like!
> __If it is a .bat file:__
> It will pull up command prompt and will query would with a continuation question 
> for the program to add the Registry Keys, choose accordingly!

### _Options_ and _Misc_
> The `Options` folder is for options that are not implemented in the 
> RAA folder. This is beause a simple reg file cannot suffice the commands needed 
> to detect a Skype Option, and block it from showing up, or to restart Explorer. 

> When running one of the Skype related .bat's in the `Options` folder, restarting Explorer
> is needed to show the changes, each of these .bat's comes with a Restart Explorer
> question, and will restart it if stated so.

> The `Misc` foler is for miscellaneous files or for files that are truely the 
> Windows Extras files

> All .bat contents can be accessed by right-clicking and choosing edit.

Version: `1.1.0`
[License](https://github.com/kym-chi/Windows-Extras/blob/main/LICENSE.txt)
[Disclaimer](https://github.com/kym-chi/Windows-Extras/blob/main/DISCLAIMER.md)
