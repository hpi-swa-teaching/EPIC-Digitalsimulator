simulation
popFrontOfQueue
	^ self queueMutex critical: 
	[
		self simulationQueue 
			ifEmpty: [EpicNilEvent new]
			ifNotEmpty: [self simulationQueue removeFirst]
	]