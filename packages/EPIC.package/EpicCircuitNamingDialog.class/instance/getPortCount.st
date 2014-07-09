naming
getPortCount
	| portCount |
	portCount := self askOnceForCircuitName.
	[self class isValidNumber: portCount]
		whileFalse: [self displayError.
			portCount := self askOnceForCircuitName
		].
	^ portCount