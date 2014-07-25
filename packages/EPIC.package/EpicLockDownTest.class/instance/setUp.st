running
setUp
	| lockDownScript |
	EpicInterfaceTest new createXmlFile.
	
	lockDownScript := EpicLockDownScript new.
	lockDownScript lockDown.
	self window: lockDownScript program