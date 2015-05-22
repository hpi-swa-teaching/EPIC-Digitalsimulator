deploying
lockDown

	self
		initializeProgram;
		deploy.
	EpicLockDownScript shouldSave ifTrue:
		[Smalltalk saveSession].