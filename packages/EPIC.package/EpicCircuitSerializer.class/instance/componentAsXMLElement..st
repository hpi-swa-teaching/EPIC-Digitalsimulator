serialization
componentAsXMLElement: aComponent
	| component |
	component := XMLElement named: 'component'.
	
	component attributes 
		at: 'name' put: (self componentIDFor: aComponent);
		at: 'type' put: (aComponent fullyQualifiedName);
		at: 'x' put: (aComponent position - self circuit innerOrigin) x asString;
		at: 'y' put: (aComponent position - self circuit innerOrigin) y asString.
			
	^ component