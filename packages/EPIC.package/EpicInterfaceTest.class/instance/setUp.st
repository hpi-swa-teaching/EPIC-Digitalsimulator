running
setUp
	| lockDownScript |
	
	self createXmlFile.
	lockDownScript := EPICLockDownScript newWith: EpicTestProgram.
	lockDownScript lockDown.
	self window: lockDownScript program