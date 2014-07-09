accessing
runTestCasesOnCopies
	| CollectionOfCopies |
	CollectionOfCopies := self createCopiesWithTestInput.
	self waitForCircuitEvents.
	^ self checkOutputValues: CollectionOfCopies.