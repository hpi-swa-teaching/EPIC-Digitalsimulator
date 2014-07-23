circuit stacking
exitCurrentCircuit
	self hideCurrentlyShownCircuit.
	self circuits removeLast.
	self showCircuit.
	self showTestLight: self testLight.
	self triggerEvent: #circuitPopped