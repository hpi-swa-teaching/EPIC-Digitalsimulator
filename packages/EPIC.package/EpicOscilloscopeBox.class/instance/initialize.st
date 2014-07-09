initialization
initialize 
	super initialize.
	self 
		layoutPolicy: ProportionalLayout new;
		initializeEventHandlers;		
		createButtons;
		registerButtonEvents;
		oscilloscopes: OrderedCollection new;
		paused: false.