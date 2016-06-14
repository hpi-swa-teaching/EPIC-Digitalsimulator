initialization
initialize
	super initialize.
	self number: self class tunnelCounter.
	self class increaseCounter.
	self tunnelEnds: OrderedCollection new