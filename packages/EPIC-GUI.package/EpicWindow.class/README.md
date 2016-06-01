I am the main window of EPIC.
I manage the MenuBar and provides the boxes in which the EpicEditorPanel and EpicPrototypePanels are redered. I enter the menu points into the MenuBar and store two menus, in case their elements have to be greyed (settingsMenu, simulationMenu). Additionally I keep the simulator ready.

Instance Variables
	editorBox:		<EpicEditorBox>
	menuBar:		<DockingBarMorph>
	prototypeBox:		<EpicPrototypeBox>
	settingsMenu:		<EpicSettingsMenu>
	simulationMenu:		<EpicSimulationMenu>
	simulator:		<EpicSimulator>
