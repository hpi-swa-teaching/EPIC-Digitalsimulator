serialization
circuitAsXMLElement
	| circuit |
	circuit := XMLElement named: 'circuit'.
	
	circuit attributes
		at: 'name' put: self circuit fullyQualifiedName;
		at: 'delay' put: self circuit delay asString;
		at: 'xmlns' put: self class xmlNameSpace;
		at: 'xmlns:xsi' put: self class xmlSchemaNamespace;
		at: 'xsi:schemaLocation' put: self class xmlSchemaLocation.
		
	circuit
		addElement: self interfaceAsXMLElement;
		addElement: self implementationAsXMLElement.
		
	^ circuit