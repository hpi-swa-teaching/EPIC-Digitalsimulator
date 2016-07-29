tab actions
openCircuit: aCircuit
	self editorPanel showCircuit: aCircuit.
	
	self tabs do: [ :tab | tab enabled: true ].
	(self circuits keyAtValue: aCircuit) enabled: false.
	self invalidRect: self bounds
	
	