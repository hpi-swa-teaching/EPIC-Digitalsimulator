selection testing
testSelector
	self createSwitchLampSetup.
	self assert: [self editorPanel selectedComponents isEmpty].
	self editorPanel selectComponentsUsing: (EpicSelector 
		from: (self window editorPanel bounds origin x) @ (self window editorPanel bounds origin y)
		to: (self window editorPanel bounds corner x) @ (self window editorPanel bounds corner y)
	).
	self assert: [self editorPanel selectedComponents size = 2]