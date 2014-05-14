serialization
pointAsXMLElement: aPoint
	| point |
	point := XMLElement named: 'point'.
	
	point attributes
		at: 'x' put: (aPoint - self circuit innerOrigin) x asString;
		at: 'y' put: (aPoint - self circuit innerOrigin) y asString.
		
	^ point