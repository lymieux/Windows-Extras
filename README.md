# ___Run As___ Addons

### Adding 2 more _"Run as"_ Commands
> ___Run As___ Addons is a repo that contains the files to adding and removing certain options from the right-click menu when clicking on to a file, primarily the "Run As" options!
> `Windows Only`

### Types :
| _Run As_ | Description |
| - | - |
| Run As Admin | Run an app as administrator (the UAC prompt appears each time) |
| Run As Highest | Run a program with the highest-level permission available to the user (the UAC prompt will appear if a user has the administrator privileges) |
| Run As Invoker | Run an app with the privileges of a parent process without the UAC prompt |
 
### Files :

##### Addons Folder
| File Name | Description |
| - | - |
| Add-RunAsInvoker | Adds `Run as invoker` |
| Add-RunAsHighest | Adds `Run as highest` |
| Add-RAI-and-RAH | Adds `Run as invoker` and `Run as highest` |
| Remove-RunAsInvoker | Removes `Run as invoker` |
| Remove-RunAsHighest | Removes `Run as highest` |
| Remove-RAI-and-RAH | Removes `Run as invoker` and `Run as highest` |

##### Options Folder
| File Name | Description |
| - | - |
| Remove-ShareWithSkype | Removes the "Share With Skype" option |
| Add-ShareWithSkype |Re-Adds the "Share With Skype" option if removed |
| Restart-Explorer | Restarts Explorer so that any changes that `Remove-ShareWithSkype` or `Add-ShareWithSkype` applies, will properly show |

### Installation
> Simply download the addon(s) that you wish to add, and double click it to run it.
> You will be prompted with a Registry Editor confirmation box, choose accordingly!
> You can delete the downloaded file(s) afterwards if you like!

> For the any of the `Options` Folder files, double click on it and it will pull up command
> prompt and will query would with a continuation question for the program to add the 
> Registry Keys, choose accordingly!

##### "Options"
> The `Options` Folder is for options that are not implemented automatically in the Addons
> Folder reg files because a simple reg file cannot suffice the commands needed to detect 
> a Skype Option, and block it from showing up. All .bat contents can be accessed 
> by right-clicking and choosing edit.

> When running one of the Skype related .bat's in the `Options` folder, restarting Explorer
> is needed to show the changes, each of these .bat's comes with a Restart Explorer
> question, and will restart it if stated so.

Version: `1.0.0`
