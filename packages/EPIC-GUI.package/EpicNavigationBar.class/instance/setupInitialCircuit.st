initialization
setupInitialCircuit
	self newTabButton: self createNewTabButton.
	self addMorphBack: self newTabButton.
	
	self createNewTab.
	self editorPanel postOpenInitialize.
	