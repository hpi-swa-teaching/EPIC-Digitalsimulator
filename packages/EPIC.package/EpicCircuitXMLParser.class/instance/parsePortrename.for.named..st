parsing
parsePortrename: anXMLElement for: aComponent named: aString
	(self portMap at: (aString, '.', (anXMLElement attributeAt: 'name')))
		setLabel: (anXMLElement attributeAt: 'newLabel')  