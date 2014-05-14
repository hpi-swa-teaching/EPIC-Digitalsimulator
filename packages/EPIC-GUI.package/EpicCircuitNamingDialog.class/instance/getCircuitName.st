naming
getCircuitName
	| circuitName |
	circuitName := self askOnceForCircuitName.
	[self class isValidName: circuitName]
		whileFalse: [self displayError.
			circuitName := self askOnceForCircuitName
		].
	^ circuitName.