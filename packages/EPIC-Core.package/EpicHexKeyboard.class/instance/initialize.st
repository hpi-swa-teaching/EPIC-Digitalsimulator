as yet unclassified
initialize
	super initialize.
	self 
		extent: (80@80);
		initializeKeys;
		addKeysAsSubmorphs;
		reLayoutOutputPorts;
		simulate