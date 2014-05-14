wire testing
testWireCreation
	self
		createSwitchLampSetup;
		
		drag: self editorPanel components first ports first
		fromEditorPanelTo: self editorPanel components second ports first center;
		
		assert: [self containsWiredComponents]