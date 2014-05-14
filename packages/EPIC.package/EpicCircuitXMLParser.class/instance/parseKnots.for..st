parsing
parseKnots: anXMLElement for: aWire
	anXMLElement ifNil: [^ self].
	anXMLElement tagsNamed: #point do: [ :eachPointElement |
		aWire addAnchorPoint: (self parsePosition: eachPointElement)
	]