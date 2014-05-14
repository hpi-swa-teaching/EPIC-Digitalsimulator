simulation control
startSimulation
	self agent startConcurrentInLoop: [self simulationLoop].
	self triggerEvent: #stateChanged