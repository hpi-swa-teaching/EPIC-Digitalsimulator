initialization
initialize
	super initialize.
	self initializeEventHandlers;
		color: Color white;
		registerForEvents;
		suppressRelayout: false