simulation
delayedWireSimulate: aWire
	self agent isRunningOrWaiting 
		ifTrue: [
			self 
				simulateWireChangeOf: aWire 
				into: aWire startPort value 
				after: aWire delay
		]
	