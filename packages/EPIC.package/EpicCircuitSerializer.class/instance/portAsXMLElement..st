serialization
portAsXMLElement: aPort
	| port |
	port := XMLElement named: 'port'.
	port attributes 
		at: 'name' put: (self portIDFor: aPort);
		at: 'label' put: aPort label.
	^ port