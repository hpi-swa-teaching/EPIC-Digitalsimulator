initialization
createTabs
	| gateTab userTab |
	gateTab := EpicPrototypeTabButton gateTab.
	userTab := EpicPrototypeTabButton userTab.
	self tabBar 
		addTab: gateTab;
		addTab: EpicPrototypeTabButton switchTab;
		addTab: EpicPrototypeTabButton lampTab;
		addTab: userTab.
	self
		setActiveTab: gateTab;
		userPanel: userTab panel
	