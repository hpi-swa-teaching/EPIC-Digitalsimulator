initialization
createTabs
	| gateTab |
	gateTab := EpicPrototypeTabButton gateTab.
	self tabBar 
		addTab: gateTab;
		addTab: EpicPrototypeTabButton circuitTab;
		addTab: EpicPrototypeTabButton sourceTab;
		addTab: EpicPrototypeTabButton displayTab;
		addTab: EpicPrototypeTabButton userTab.
	self setActiveTab: gateTab
	