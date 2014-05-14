selection testing
testSelector
	self createSwitchLampSetup.
	self assert: [self editorPanel selectedComponents isEmpty].
	self editorPanel selectComponentsUsing: (EpicSelector 
		from: self window editorPanel center - (300@300) 
		to: self window editorPanel center + (300@300)
	).
	self assert: [self editorPanel selectedComponents size = 2]