## RAA (Run as Addons):

### Files:

| File Name | Description |
| - | - |
| Add-RunAsInvoker | Adds `Run as invoker` |
| Add-RunAsHighest | Adds `Run as highest` |
| Add-RAI-and-RAH | Adds `Run as invoker` and `Run as highest` |
| Remove-RunAsInvoker | Removes `Run as invoker` |
| Remove-RunAsHighest | Removes `Run as highest` |
| Remove-RAI-and-RAH | Removes `Run as invoker` and `Run as highest` |

### What They Do:

__| Run As Admin |__

Run an app as administrator (the UAC prompt appears each time)

__| Run As Highest |__ 

Run a program with the highest-level permission available to the user (the UAC prompt will appear if a user has the administrator privileges)

__| Run As Invoker |__

Run an app with the privileges of a parent process without the UAC prompt

Version: `1.1.0`
