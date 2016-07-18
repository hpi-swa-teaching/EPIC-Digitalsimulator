circuit tabbing
openCircuitAt: anIndex
	| circuit |
	circuit := self circuits at: anIndex.
	self showCircuit: circuit.