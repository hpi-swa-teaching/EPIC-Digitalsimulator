serialization
pointAsXMLElement: anEpicAnchor
	| point pointElement |
	pointElement := XMLElement named: 'point'.
	
	point := anEpicAnchor point.
	
	pointElement attributes
		at: 'x' put: (point - self circuit innerOrigin) x asString;
		at: 'y' put: (point - self circuit innerOrigin) y asString.
		
	^ pointElement