interface
openFileFor: aWindow with: aDictionary
	self new
		window: aWindow;
		filetypeSelectors: aDictionary;
		initializeBasicParameters;
		initializeAsOpenWindow.