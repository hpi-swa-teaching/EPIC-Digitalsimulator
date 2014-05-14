parsing
parseCircuit: anXMLElement
	self circuit fullyQualifiedName: (anXMLElement attributeAt: 'name').
	self
		parseInterface: (anXMLElement firstTagNamed: #interface);
		parseImplementation: (anXMLElement firstTagNamed: #implementation)