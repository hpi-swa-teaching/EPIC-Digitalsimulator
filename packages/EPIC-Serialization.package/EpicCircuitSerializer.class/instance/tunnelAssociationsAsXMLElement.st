serialization
tunnelAssociationsAsXMLElement
	| tunnelConnections |
	tunnelConnections := XMLElement named: 'tunnelAssociations'.
	
	self circuit subComponents do: [ :eachComponent |
		eachComponent isTunnelOpening ifTrue: [
			(self tunnelAssociationsForTunnelOpeningAsXMLElement: eachComponent) do: [ :connection |
				tunnelConnections addElement: connection ] ] ].
	
	^ tunnelConnections