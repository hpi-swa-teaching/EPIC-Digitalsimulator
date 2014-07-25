deploying
initErrorHandling

	EpicLockDownScript logfileMode ifTrue:
		[self initMethodTemplate: #defaultAction in: UnhandledError].