helper messages
xmlForContentsOf: aCircuit
	| xml |
	self editorPanel showStackedCircuit: aCircuit.
	xml := self editorPanel circuit asXMLDocument asString.
	self editorPanel eventuallyExitCurrentCircuit.
	^ xml