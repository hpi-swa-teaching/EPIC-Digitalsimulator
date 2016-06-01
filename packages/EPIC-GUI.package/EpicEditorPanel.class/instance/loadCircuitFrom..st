loading
loadCircuitFrom: anXMLDocument
	| circuit |
	circuit := self parseCircuitFrom: anXMLDocument.
	self updatePositionOf: circuit.
	self showReplacedCircuit: circuit