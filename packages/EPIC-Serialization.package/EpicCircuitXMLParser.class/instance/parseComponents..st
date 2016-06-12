parsing
parseComponents: anXMLElement
	anXMLElement tagsNamed: #component do: [ :eachElement |
		self parseComponent: eachElement ]