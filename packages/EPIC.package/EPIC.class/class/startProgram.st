instance creation
startProgram
	self currentHand releaseKeyboardFocus.
	^ EpicWindow new 
		openInWorld;
		yourself