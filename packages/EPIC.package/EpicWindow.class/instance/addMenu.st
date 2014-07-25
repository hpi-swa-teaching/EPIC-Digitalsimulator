initialization
addMenu

	self menuBar: (DockingBarMorph new
		layoutFrame: self menuBarFrame;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap).