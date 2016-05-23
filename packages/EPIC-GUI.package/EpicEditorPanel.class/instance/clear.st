deletion
clear
	| circuit |
	circuit := EpicCircuit new.
	self updatePositionOf: circuit.
	self showReplacedCircuit: circuit.