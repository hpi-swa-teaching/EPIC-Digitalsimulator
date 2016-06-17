combining
reconnectWires: aCollectionOfWires using: aPortClass
	self 
		reconnectGroupedWires:  (aCollectionOfWires 
			groupBy: [ :eachWire | eachWire startPort ]
		) using: aPortClass