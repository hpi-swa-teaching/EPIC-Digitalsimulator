running
setUp
	| lockDownScript |
	EpicInterfaceTest new createXmlFile.
	
	lockDownScript := EPICLockDownScript new.
	lockDownScript lockDown.
	self window: lockDownScript program