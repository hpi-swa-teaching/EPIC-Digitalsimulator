loading
loadCircuitFrom: anXMLDocument
	| circuit |
	circuit := self parseCircuitFrom: anXMLDocument.
	self newCircuit: circuit