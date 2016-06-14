instance creation
startProgram
	self currentHand releaseKeyboardFocus.
	self reset.
	^ EpicWindow new
		color: (Color r: 0.838 g: 0.804 b: 0.804);
		openInWindow;
		yourself