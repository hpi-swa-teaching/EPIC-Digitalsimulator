menu creation
createMenuBar
	^ DockingBarMorph new
		layoutFrame: self menuBarFrame;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself