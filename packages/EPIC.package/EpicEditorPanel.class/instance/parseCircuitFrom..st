loading
parseCircuitFrom: anXMLDocument
	^ EpicCircuitXMLParser new
			when: #componentParsed send: #triggerComponentAdded: to: self;
			when: #wireParsed send: #triggerWireAdded: to: self;
			parse: anXMLDocument