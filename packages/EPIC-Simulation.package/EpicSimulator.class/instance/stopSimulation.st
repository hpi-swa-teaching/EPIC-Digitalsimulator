simulation control
stopSimulation
	self agent abort.
	self agent waitForIdle.
	self triggerEvent: #stateChanged