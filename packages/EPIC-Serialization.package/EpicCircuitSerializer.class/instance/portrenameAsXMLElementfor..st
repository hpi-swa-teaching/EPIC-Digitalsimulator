serialization
portrenameAsXMLElementfor: aPort
	| portrename |
	portrename := XMLElement named: 'portrename'.
	
	portrename attributes
		at: 'name' put: (self portIDFor: aPort);
		at: 'newLabel' put: (aPort label).
	
	^ portrename