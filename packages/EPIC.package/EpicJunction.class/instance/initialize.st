initialization
initialize
	super initialize.
	self 
		bounds: (self bounds origin rect: self class gateSize);
		reLayoutPorts 