initialization
addMenu
	self 
		menuBar: self createMenuBar;
		addMorph: self menuBar fullFrame: self menuBarFrame;
		addMenuEntries