simulation control
stopSimulation
	"self agent abort.
	self agent waitForIdle."
	self currentlyRunning: false.
	self components do: [:i | i stopSimulating].
	self triggerEvent: #stateChanged