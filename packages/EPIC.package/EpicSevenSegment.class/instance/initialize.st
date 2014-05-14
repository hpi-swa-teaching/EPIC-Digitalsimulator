initialization
initialize
	super initialize.
	self 
		extent: (50@72);
		initializeSegments;
		addSegmentsAsSubmorphs;
		reLayoutInputPorts