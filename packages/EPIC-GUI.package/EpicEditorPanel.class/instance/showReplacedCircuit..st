circuit stacking
showReplacedCircuit: aCircuit
	self baseCircuit delete.
	self circuits removeAll.
	self circuits add: aCircuit.
	self showCircuit.
	self triggerEvent: #circuitResetted
	