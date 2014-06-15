running
setUp
	| lockDownScript |
	EpicInterfaceTest new createXmlFile.
	
	lockDownScript := LockDownScript new.
	lockDownScript lockDown.
	self window: lockDownScript program