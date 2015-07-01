initialization
initialStartSimulation
	self agent startConcurrentInLoop: [self simulationLoop].
	self startSimulation.
	self triggerEvent: #stateChanged