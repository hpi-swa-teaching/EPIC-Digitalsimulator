initialization
createTabs
	| gateTab |
	gateTab := EpicPrototypeTabButton gateTab.
	self tabBar 
		addTab: gateTab;
		addTab: EpicPrototypeTabButton switchTab;
		addTab: EpicPrototypeTabButton lampTab;
		addTab: EpicPrototypeTabButton userTab.
	self setActiveTab: gateTab
	