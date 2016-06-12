helper messages
extractPortFrom: anXMLElement prefixed: aString
	^ self portMap
		at: (self extractPortNameFrom: anXMLElement prefixed: aString)