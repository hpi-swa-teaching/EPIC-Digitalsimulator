instance creation
startProgram
	self currentHand releaseKeyboardFocus.
	^ EpicTestWindow new
		openInWorld;
		yourself