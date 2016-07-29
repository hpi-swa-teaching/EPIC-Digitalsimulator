helper messages
xmlForContentsOf: aCircuit
	| xml circuit |
	circuit := self editorPanel circuit.
	self editorPanel showCircuit: aCircuit.
	xml := self editorPanel circuit asXMLDocument asString.
	self editorPanel showCircuit: circuit.
	^ xml