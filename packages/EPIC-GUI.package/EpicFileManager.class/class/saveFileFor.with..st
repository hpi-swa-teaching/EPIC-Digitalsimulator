interface
saveFileFor: aWindow with: aDictionary
	self new
		window: aWindow;
		filetypeSelectors: aDictionary;
		initializeBasicParameters;
		initializeAsSaveWindow.