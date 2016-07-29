loading
loadCircuitFrom: anXMLDocument
	| circuit |
	circuit := self parseCircuitFrom: anXMLDocument.
	self navigationBar createNewTab: circuit.