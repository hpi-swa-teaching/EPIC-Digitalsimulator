simulation
peekFrontOfQueue
	^ self queueMutex critical: 
	[
		self simulationQueue 
			ifEmpty: [EpicNilEvent new]
			ifNotEmpty: [self simulationQueue first]
	]