parsing
parseConnections: anXMLElement
	anXMLElement tagsNamed: #wire do: [:eachElement |
		self parseWire: eachElement
	]