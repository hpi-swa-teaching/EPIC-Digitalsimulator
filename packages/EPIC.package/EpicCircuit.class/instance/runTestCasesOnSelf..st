component testing
runTestCasesOnSelf: aProgress
	| progressPerCase totalProgress |
	totalProgress := 0.0.
	progressPerCase := 1/(2 raisedTo: self inputPorts size).
	aProgress ifNotNil: [ aProgress value contents: totalProgress].
	self testCases do: [:eachCase | 
		self inputPorts do: [ :inputPort |
			inputPort setValue: (eachCase first at: (self inputPorts indexOf: inputPort)).
			self waitForCircuitEvents.
			eachCase at: 3 put: (self outputValues hasEqualElements: (eachCase second asOrderedCollection)).

		].			
		totalProgress := progressPerCase + totalProgress.
		aProgress ifNotNil: [aProgress value contents: totalProgress]
	 ]