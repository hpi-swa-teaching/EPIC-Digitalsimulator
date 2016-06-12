parsing
parseTunnelAssociations: anXMLElement
	anXMLElement tagsNamed: #association do: [ :eachElement |
		self parseTunnelAssociation: eachElement ]