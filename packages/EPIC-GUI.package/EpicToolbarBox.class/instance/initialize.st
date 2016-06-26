initialization
initialize 
	super initialize.
	self 
		layoutPolicy: ProportionalLayout new;
		addPrototypeBox;
		addConfigurationBox.
		
	self addMorph: self prototypeBox.
	self addMorph: self configurationBox