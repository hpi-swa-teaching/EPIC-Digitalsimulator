panel creation
addToolbarBox

	self toolbarBox: (EpicToolbarBox new
		layoutFrame: self toolbarFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill).
		