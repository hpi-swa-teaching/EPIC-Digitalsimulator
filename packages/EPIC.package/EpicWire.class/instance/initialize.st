initialization
initialize 
	super initialize.
	self 
		includingBundles: OrderedCollection new;
		setLineWidth: self class defaultLineWidth;
		grabbedPointIndex: 0;
		deselect 