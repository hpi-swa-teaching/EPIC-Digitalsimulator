drawing
simulateWith: inputValues
	self tunnelEnds do: [ :aTunnelEnd | 
		aTunnelEnd simulateWith: OrderedCollection new]