tab manipulation
setActiveTab: aTab
	self tabs 
		reject: [:eachTab | eachTab == aTab] 
		thenDo: [:eachTab | eachTab enabled: true].
	aTab enabled: false