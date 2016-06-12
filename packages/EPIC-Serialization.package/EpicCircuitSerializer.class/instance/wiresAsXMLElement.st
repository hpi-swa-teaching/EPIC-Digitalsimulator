serialization
wiresAsXMLElement
	| connections|
	connections := XMLElement named: 'connections'.
	
	self circuit internalSubWires do: [:eachWire |
		connections addElement: (self wireAsXMLElement: eachWire) ].
	
	^ connections