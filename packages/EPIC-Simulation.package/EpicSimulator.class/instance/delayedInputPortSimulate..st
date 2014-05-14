simulation
delayedInputPortSimulate: anInputPort
	self agent isRunningOrWaiting 
		ifTrue: [
			self 
				simulatePortChangeOf: anInputPort 
				into: anInputPort value 
				after: anInputPort component delay
		]