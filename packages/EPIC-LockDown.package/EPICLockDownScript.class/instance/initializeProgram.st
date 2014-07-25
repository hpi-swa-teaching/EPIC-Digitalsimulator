initialization
initializeProgram

	World submorphs do: [:each | each visible: false].
	self program: EPICLockDownScript defaultStartingClass startProgramInMorph.
	self program sticky: true
	