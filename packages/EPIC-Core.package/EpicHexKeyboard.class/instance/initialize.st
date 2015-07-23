initialization
initialize
	super initialize.
	self 
		extent: (80@80);
		keys: OrderedCollection new;
		initializeKeys;
		addKeysAsSubmorphs;
		reLayoutOutputPorts;
		simulate