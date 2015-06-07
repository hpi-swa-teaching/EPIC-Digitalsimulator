running
setUp
	
	| lockDownScript |
	EpicInterfaceTest new createXmlFile.
	
	self preferences: Dictionary new.	
	self backupPeferences.	
	self keyboardListeners: World activeHand keyboardListeners.
	
	lockDownScript := EpicLockDownScript new.
	lockDownScript lockDown.
	self window: lockDownScript program
