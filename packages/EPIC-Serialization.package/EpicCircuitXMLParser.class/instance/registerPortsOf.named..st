parsing
registerPortsOf: aComponent named: aString
	self 
		registerPorts: aComponent inputPorts baseNamed: aString, '.input';
		registerPorts: aComponent outputPorts baseNamed: aString, '.output'