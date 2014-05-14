serialization
anchorPointsAsXMLElementfor: aWire
	| knots |
	knots := XMLElement named: 'knots'.
	
	aWire anchorPoints do: [:eachPoint | 
		knots addElement: (self pointAsXMLElement: eachPoint)
	].
	
	^ knots