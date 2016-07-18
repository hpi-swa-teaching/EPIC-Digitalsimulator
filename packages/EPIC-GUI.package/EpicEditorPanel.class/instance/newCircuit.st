circuit tabbing
newCircuit
	| circuit |
	circuit := EpicCustomCircuit new.
	self updatePositionOf: circuit.
	self circuits add: circuit.
	self showCircuit.
	self triggerEvent: #updateNavigationBar.