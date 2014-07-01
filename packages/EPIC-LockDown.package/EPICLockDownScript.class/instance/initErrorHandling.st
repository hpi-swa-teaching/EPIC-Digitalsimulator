deploying
initErrorHandling

	EPICLockDownScript logfileMode ifTrue:
		[self initMethodTemplate: #defaultAction in: UnhandledError]