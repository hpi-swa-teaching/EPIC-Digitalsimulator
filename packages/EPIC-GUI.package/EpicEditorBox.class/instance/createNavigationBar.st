initialization
createNavigationBar
	self 
		navigationBar: ((EpicNavigationBar new) for: self editorPanel);
		addMorph: self navigationBar fullFrame: self navigationBarFrame.