circuit stacking
exitCurrentCircuit
	self hideCurrentlyShownCircuit.
	self circuits removeLast.
	self showCircuit.
	self triggerEvent: #circuitPopped