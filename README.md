# AntiDoubleMiddleClick

The Logitech G502 series has a known problem: Pressing the middle mouse button too hard, slamming your mouse on your desk in a fit of rage, or dropping your mouse from a high distance causes the middle mouse button to no longer become tactile. If you're like me and don't care that much and just want the thing to damn work without it pressing while scrolling, this solves that problem. 

This script stops the middle mouse button from registering inputs unless held for more than 0.1s. The problem with my mouse (lightspeed) at least was that scrolling was causing it to press as the tactility from the odd switch was indented.

Determine a good mouse delay with the python script and set the MS times in the AutoHotKey script if you must.. the best delay I found was 100ms.

## Running on startup

Win+R `shell:startup`
Make a shortcut of the .ahk script and move it into this folder
Run the shortcut if you don't already have the script running
**Will run on next launch and forever until you remove it from said folder. May take up to 2 minutes to run thanks to Windows' application priority slop that I don't understand