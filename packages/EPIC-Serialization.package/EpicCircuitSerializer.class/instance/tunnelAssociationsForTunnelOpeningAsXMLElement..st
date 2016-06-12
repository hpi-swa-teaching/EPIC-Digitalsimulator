serialization
tunnelAssociationsForTunnelOpeningAsXMLElement: aTunnelOpening
	| tunnelConnections |
	tunnelConnections := OrderedCollection new.
	
	aTunnelOpening tunnelEnds do: [ :end |
		tunnelConnections add: (self tunnelAssociationAsXMLElement: aTunnelOpening withTunnelEnd: end) ].
	
	^ tunnelConnections