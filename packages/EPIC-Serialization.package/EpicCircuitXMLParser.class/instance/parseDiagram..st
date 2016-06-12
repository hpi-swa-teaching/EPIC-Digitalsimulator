parsing
parseDiagram: anXMLElement
	self
		parseComponents: (anXMLElement firstTagNamed: #components);
		parseConnections: (anXMLElement firstTagNamed: #connections);
		parseTunnelAssociations: (anXMLElement firstTagNamed: #tunnelAssociations)