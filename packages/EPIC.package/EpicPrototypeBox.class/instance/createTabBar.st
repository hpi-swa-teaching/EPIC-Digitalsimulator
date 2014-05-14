initialization
createTabBar
	self tabBar: EpicPrototypeTabBar new;
		addMorph: self tabBar fullFrame: self tabBarFrame;
		createTabs.
	self tabBar 
		when: #tabClicked send: #setActiveTab: to: self.
	