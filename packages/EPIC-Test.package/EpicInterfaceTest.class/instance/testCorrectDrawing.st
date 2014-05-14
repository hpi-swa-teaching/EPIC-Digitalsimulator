drawing testing
testCorrectDrawing
	| initialForm |
	initialForm := self window imageForm.
	self createSwitchLampSetup.
	self window prototypeBox tabBar tabClicked: self window prototypeBox tabBar tabs first.
	
	self deny: [ self window imageForm bits = initialForm bits ].
	
	self editorPanel 
		selectAllComponentsAndWires;
		deleteSelectedComponents.
	
	self assert: [ self window imageForm bits = initialForm bits ]