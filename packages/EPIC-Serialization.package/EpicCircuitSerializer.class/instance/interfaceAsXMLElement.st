serialization
interfaceAsXMLElement
	^ (XMLElement named: 'interface')
		addElement: self inputPortsAsXMLElement;
		addElement: self outputPortsAsXMLElement;
		yourself