serialization
asXMLDocument
	^ EpicXMLDocument new
		version: '1.0';
		addElement: self circuitAsXMLElement;
		yourself