file names
getSubCircuitName
	| circuitName |
	circuitName := self askOnceForCircuitName.
	[self class isValidName: circuitName]
		whileFalse: [self displayError.
			circuitName := self askOnceForCircuitName
		].
	^ circuitName