helper messages
moveComponentToEditorPanel: aComponent
	self assert: [ (self containsComponentOfSameType: aComponent) not ].
	self 
		drag: aComponent 
		fromPrototypePanelTo: self window editorPanel center.
	self assert: [ self containsComponentOfSameType: aComponent ]
