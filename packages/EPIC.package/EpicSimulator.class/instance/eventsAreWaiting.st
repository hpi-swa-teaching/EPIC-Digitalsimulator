waiting
eventsAreWaiting
	^ self queueMutex critical: [self simulationQueue isEmpty not]	