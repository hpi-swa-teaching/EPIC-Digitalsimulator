serialization
implementationAsXMLElement
	^ (XMLElement named: 'implementation')
		addElement: self diagramAsXMLElement;
		yourself