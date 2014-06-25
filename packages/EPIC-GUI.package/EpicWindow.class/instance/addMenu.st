initialization
addMenu
	self menuBar: self createMenuBar.
	self menuBar
		layoutFrame: self menuBarFrame;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.