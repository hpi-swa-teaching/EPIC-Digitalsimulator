simulation control
startSimulation
	self currentlyRunning: true.
	self components do: [:i | 
		i startSimulating.
		i simulate].
	self triggerEvent: #stateChanged