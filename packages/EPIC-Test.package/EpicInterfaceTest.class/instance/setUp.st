running
setUp
	
	| lockDownScript |
	self createXmlFile.
	lockDownScript := EPICLockDownScript newWith: EpicTestProgram.
	lockDownScript lockDown.
	self window: lockDownScript program
	"self window: EPIC startProgram.
	self window extent: 1276 @ 730."