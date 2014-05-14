parsing
parseImplementation: anXMLElement
	self parseDiagram: (anXMLElement firstTagNamed: #diagram)