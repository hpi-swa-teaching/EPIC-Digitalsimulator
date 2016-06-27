accessing
initialize
	super initialize.
	self createConfigurationPanel.
	self scroller addMorphBack: self configurationPanel