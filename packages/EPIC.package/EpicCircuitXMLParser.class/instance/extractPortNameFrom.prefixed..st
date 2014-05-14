helper messages
extractPortNameFrom: anXMLElement prefixed: aString
	^ (anXMLElement attributeAt: aString, 'Component'), 
		'.',
		(anXMLElement attributeAt: aString, 'Port')