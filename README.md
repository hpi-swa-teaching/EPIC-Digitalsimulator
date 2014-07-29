# EPIC-Digitalsimulator

[![Build Status](https://travis-ci.org/SWTI2014/EPIC-Digitalsimulator.svg)](https://travis-ci.org/SWTI2014/EPIC-Digitalsimulator)


## Installation

- `$ git clone <link to repo>`
- `$ git submodule init` (Initializes your local configuration file)
- `$ git submodule update` (Fetches all the data from that project and checks out the appropriate commit listed in your superproject.)

- Download a new squeak 4.5 image
- Open image and open Tools > Monticello Browser
- Click on "+Repository" and the `filetree://
- In the following pop-up select the `package` directory in the git repository
- Select the newly created filetree entry and click on "open"
- Go through the packages and click load for each

- You can now verify the installation by executing `EPIC startProgram` in the workspace window
- In order to build a deployable version of the simulator you can lock down the Digitalsimulator

	**Attention:**
	This will modify your image and delete code!
	To be able to reset the image make sure to save if before the lockdown.
	(And deactivate the flag to save it afterwards!)
	
	Execute `EPICLockDownScript new lockDown.` in a workspace window.
	
	In detail this will …
	
	- Remove squeak specific GUI elements like the menu-bar, systemWindow, etc.
	- Suppress secondary mouse buttons and keyboard shortcuts
	- Open the Digitalsimulator in fullscreen inside the squeak window
	- Prevent panning inside the squeak window
	- Suppresses error messages and writes them to the `SqueakDebug.log` logfile in the Resources directory instead. (Configurable via flags)
	- make it possible to reduce app size by allowing to delete `*.changes` and `*.sources` files without problems
	
- For an automated lockdown use the buildscript like this: ´$ ./buildScript.sh Digitalsimulator <pathToYourSqueak>´
	
	This will download a unmodified vm for Mac, Linux and Windows and bundle it with all the necessary files from your squeak image to a new deployable image.


## Changes in legacy system

- Ported from Squeak 4.4 to Squeak 4.5
- EpicWindow inherits from Morph instead of systemWindow
- Bugfixes


## Credits

- Inspiration for lockdown-script: http://map.squeak.org/package/0c6d3bda-adbb-496a-ae84-8d4c145d14b5
- Original deployment script: https://github.com/pdebruic/Squeak-All-In-One
