waiting
waitBounded: aTime
	aTime ifNotNil: [aTime <= 0 ifTrue: [^self]].
	self increaseSimulationTimeDuring: 
		[self agent waitForSignalMaxMilliseconds: 
			(self realTimeFor: aTime)
		]
	