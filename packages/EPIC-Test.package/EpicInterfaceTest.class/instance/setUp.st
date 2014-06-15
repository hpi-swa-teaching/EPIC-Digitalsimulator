running
setUp
	| lockDownScript |
	
	self createXmlFile.
	lockDownScript := LockDownScript newWith: EpicTestProgram.
	lockDownScript lockDown.
	self window: lockDownScript program