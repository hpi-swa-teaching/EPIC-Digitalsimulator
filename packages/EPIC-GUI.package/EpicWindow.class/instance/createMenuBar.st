menu creation
createMenuBar
	^ DockingBarMorph new
		disableTableLayout;
		layoutFrame: self menuBarFrame;
		hResizing: #spaceFill;
		vResizing: #rigid;
		yourself