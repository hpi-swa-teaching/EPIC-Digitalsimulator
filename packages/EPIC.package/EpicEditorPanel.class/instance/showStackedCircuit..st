circuit stacking
showStackedCircuit: aCircuit
	self circuits addLast: aCircuit.
	self showCircuit.
	self triggerEvent: #circuitPushed 