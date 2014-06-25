instance creation
startProgramInMorph
	self currentHand releaseKeyboardFocus.
	^ EpicWindow new 
		openInWorld;
		yourself