# EPIC-Digitalsimulator

[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/EPIC-Digitalsimulator.svg?branch=developer)](https://travis-ci.org/HPI-SWA-Teaching/EPIC-Digitalsimulator)

**EPIC: Program for Integrated Circuits** is a tool that allows the user to create, edit, simulate and export digital circuits.

## Getting started

To start using EPIC, you can either download the EPIC stand alone image from our [latest release](https://github.com/HPI-SWA-Teaching/EPIC-Digitalsimulator/releases/latest), or install it manually into your own Squeak image.

## Manual installation

### via filetree:

#### download repository

- `$ git clone git@github.com:HPI-SWA-Teaching/EPIC-Digitalsimulator.git`

#### import code

- open your Squeak image
- open `Tools` > `Monticello Browser`
- click on `+Repository` and select the `filetree://` entry
- in the following pop-up select the `package` directory inside the cloned git repository
- select the newly created filetree entry and click on "open"
- go through the packages and click load for each

#### import resources

- from the downloaded repository, copy the `epic-resources` folder into the `Resources`-Folder of your Squeak image

### via SAR file:

- download the SAR file from our [latest release](https://github.com/HPI-SWA-Teaching/EPIC-Digitalsimulator/releases/latest)
- open your Squeak image
- drag the downloaded SAR file into your image and choose `install SAR`

You can now verify the installation by executing `EPIC startProgram` in the workspace window. If you furthermore wish to build a deployable stand alone version of the simulator you can lock down the Squeak image like explained below.

## Create a locked down image

In detail this will…

- remove Squeak specific GUI elements like the menu-bar, systemWindow, etc.
- suppress secondary mouse buttons and keyboard shortcuts
- open the Digitalsimulator in fullscreen inside the Squeak window
- prevent panning inside the Squeak window
- suppresses error messages and writes them to the `SqueakDebug.log` logfile in the Resources directory instead (configurable via flags)
- make it possible to reduce app size by allowing to delete `*.changes` and `*.sources` files without problems

### without saving the image:

Execute `EpicLockDownScript new lockDown.` in a workspace window.

### with saving the image:

> **Attention:**
> This will modify your image and delete code!
> To be able to reset the image make sure to save if before the lockdown (and deactivate the flag to save it afterwards).

Execute `EpicLockDownScript new lockDownAndShowSaveDialog: true.` in a workspace window, and choose `yes` when asked if you wished to save the Smalltalk session.

## Credits

- Inspiration for lockdown-script: http://map.squeak.org/package/0c6d3bda-adbb-496a-ae84-8d4c145d14b5
- Original deployment script: https://github.com/pdebruic/Squeak-All-In-One
