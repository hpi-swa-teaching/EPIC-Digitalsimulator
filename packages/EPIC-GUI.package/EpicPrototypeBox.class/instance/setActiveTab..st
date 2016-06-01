tab manipulation
setActiveTab: aTab
	self tabBar setActiveTab: aTab.
	self setActivePanel: aTab panel