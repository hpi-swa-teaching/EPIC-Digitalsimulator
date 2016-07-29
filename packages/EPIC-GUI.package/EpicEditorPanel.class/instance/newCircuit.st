circuit tabbing
newCircuit
	| circuit |
	circuit := EpicCustomCircuit new.
	self updatePositionOf: circuit.
	^ circuit.