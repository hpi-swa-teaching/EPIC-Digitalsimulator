loading
loadCircuitFrom: anXMLDocument
	| circuit |
	circuit := self parseCircuitFrom: anXMLDocument.
	self showCircuit: circuit.