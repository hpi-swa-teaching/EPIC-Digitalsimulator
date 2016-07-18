circuit tabbing
newCircuit
	| circuit |
	circuit := EpicCustomCircuit new.
	self updatePositionOf: circuit.
	self circuits add: circuit.
	self triggerEvent: #updateNavigationBar.
	self showCircuit.