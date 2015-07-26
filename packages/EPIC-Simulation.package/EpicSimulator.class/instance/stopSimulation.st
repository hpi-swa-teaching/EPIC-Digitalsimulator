simulation control
stopSimulation
	
	self currentlyRunning: false.
	self components do: [:i | i stopSimulating].
	self triggerEvent: #stateChanged