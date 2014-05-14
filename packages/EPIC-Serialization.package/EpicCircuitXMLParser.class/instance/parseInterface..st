parsing
parseInterface: anXMLElement
	self
		parseInputPorts: (anXMLElement firstTagNamed: #input);
		parseOutputPorts: (anXMLElement firstTagNamed: #output)