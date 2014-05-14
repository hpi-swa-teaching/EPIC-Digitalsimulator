initialization
initialize
	super initialize.
	self 
		wires: OrderedCollection new;
		value: false;
		extent: self class portSize;
		initializePortName