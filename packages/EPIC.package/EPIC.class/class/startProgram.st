instance creation
startProgram
	self currentHand releaseKeyboardFocus.
	^ EpicWindow new
		color: (Color r: 0.838 g: 0.804 b: 0.804);
		openInWindow;
		yourself