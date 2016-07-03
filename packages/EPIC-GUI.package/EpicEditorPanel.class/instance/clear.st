deletion
clear
	| circuit |
	circuit := EpicCustomCircuit new.
	self updatePositionOf: circuit.
	self showReplacedCircuit: circuit.