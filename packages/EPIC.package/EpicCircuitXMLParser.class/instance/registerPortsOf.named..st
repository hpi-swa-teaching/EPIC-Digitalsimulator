parsing
registerPortsOf: aComponent named: aString
	self 
		register: aComponent inputPorts baseNamed: aString, '.input';
		register: aComponent outputPorts baseNamed: aString, '.output'
	