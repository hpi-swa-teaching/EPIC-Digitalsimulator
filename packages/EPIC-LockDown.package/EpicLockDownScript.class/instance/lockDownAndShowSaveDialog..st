deploying
lockDownAndShowSaveDialog: aBool

	self
		initializeProgram;
		deploy.
	aBool ifTrue: [
		(self confirm: 'Do you want to save the Smalltalk
session now?') ifTrue: [Smalltalk saveSession]]