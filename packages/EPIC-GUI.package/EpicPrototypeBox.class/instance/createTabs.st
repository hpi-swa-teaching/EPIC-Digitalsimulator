initialization
createTabs
	| gateTab userTab |
	gateTab := EpicPrototypeTabButton gateTab.
	userTab := EpicPrototypeTabButton userTab.
	self tabBar 
		addTab: gateTab;
		addTab: EpicPrototypeTabButton circuitTab;
		addTab: EpicPrototypeTabButton sourceTab;
		addTab: EpicPrototypeTabButton displayTab;
		addTab: userTab.
	self
		setActiveTab: gateTab;
		userPanel: userTab panel
	