serialization
tunnelAssociationAsXMLElement: aTunnelOpening withTunnelEnd: aTunnelEnd
	| tunnelConnection |
	tunnelConnection := XMLElement named: 'association'.
	
	tunnelConnection attributes 
		at: 'source' put: (self componentIDFor: aTunnelOpening);
		at: 'destination' put: (self componentIDFor: aTunnelEnd).
	
	^ tunnelConnection