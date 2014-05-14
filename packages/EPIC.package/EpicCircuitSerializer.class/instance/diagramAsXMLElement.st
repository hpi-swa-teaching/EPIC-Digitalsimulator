serialization
diagramAsXMLElement
	^ (XMLElement named: 'diagram')
		addElement: self componentsAsXMLElement;
		addElement: self wiresAsXMLElement;
		yourself