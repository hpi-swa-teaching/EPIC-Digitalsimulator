initialization
createSaveWindowLayout
	
	self addFullPanesTo: self morphicView from: {
		self addPane: self directoryPane 
			from:  0 @ 0 to: 0.5 @ (1 - (2 * EpicFileManager panelHeight)).
		self addPane: self filePane 
			from: 0.5 @ 0 to: 1 @ (1 - (2 * EpicFileManager panelHeight)).
		self addPane: self inputPane 
			from: 0 @ (1 - (2 * EpicFileManager panelHeight)) 
			to: 1 @ (1 - EpicFileManager panelHeight).
		self addPane: self buttonPane 
			from: 0 @ (1 - EpicFileManager panelHeight) to: 1 @ 1
	}