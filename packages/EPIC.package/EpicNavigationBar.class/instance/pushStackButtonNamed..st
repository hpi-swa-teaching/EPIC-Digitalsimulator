as yet unclassified
pushStackButtonNamed: aString
	self 
		enablePreviousButton;
		addOptionalSeperator;
		addMorphBack: (self createStackButtonNamed: aString);
		disableCurrentButton