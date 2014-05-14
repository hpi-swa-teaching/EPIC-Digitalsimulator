tab manipulation
addTab: aTab
	self addMorph: aTab.
	aTab action: [self tabClicked: aTab];
		position: (self calculatePositionForNewTab).
	self tabs add: aTab