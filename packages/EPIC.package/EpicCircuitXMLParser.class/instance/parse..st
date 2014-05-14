parsing
parse: anXMLDocument
	self parseCircuit: (anXMLDocument firstTagNamed: #circuit).
	
	^ self circuit 