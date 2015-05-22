running
setUp
	
	"| lockDownScript |
	self createXmlFile.
	lockDownScript := EpicLockDownScript newWith: EpicTestProgram.
	lockDownScript lockDown.
	self window: lockDownScript program"
	self window: EPIC startProgramInMorph.
	self window extent: 1276 @ 730