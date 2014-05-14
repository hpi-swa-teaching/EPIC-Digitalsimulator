serialization
wireAsXMLElement: aWire
	| wire |
	wire := XMLElement named: 'wire'.
	
	wire attributes 
		at: 'startComponent' put: (self componentIDFor: aWire startComponent);
		at: 'targetComponent' put: (self componentIDFor: aWire endComponent);
		at: 'startPort' put: (self portIDFor: aWire startPort);
		at: 'targetPort' put: (self portIDFor: aWire endPort ).
		
	aWire hasAnchorPoints ifTrue:
		[wire addElement: (self anchorPointsAsXMLElementfor: aWire)].
	
	^ wire