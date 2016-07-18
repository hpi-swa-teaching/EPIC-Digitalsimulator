circuit tabbing
newCircuit: aCircuit
	self updatePositionOf: aCircuit.
	self circuits add: aCircuit.
	self showCircuit: aCircuit.
	self triggerEvent: #updateNavigationBar