initialization
createNavigationBar
	self 
		navigationBar: EpicNavigationBar new;
		addMorph: self navigationBar fullFrame: self navigationBarFrame.
	self navigationBar createNewTabButton