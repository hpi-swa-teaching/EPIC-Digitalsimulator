initialization
initialize 
	super initialize.
	self color: Color veryLightGray;
		 values: OrderedCollection new;
		 closeButtonHandler: EventHandler new;
		 registerButtonEvents;
		 addCloseButton 
