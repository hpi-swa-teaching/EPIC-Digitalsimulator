helper messages
moveComponentToEditorPanel: aComponent
	self assert: [ (self containsComponentOfSameType: aComponent) not ].
	self 
		drag: aComponent 
		fromPrototypePanelTo: (self window editorBox bounds left + 300) @ (self window editorBox bounds top + 200).
		"fromPrototypePanelTo: self window editorPanel center."
	self assert: [ self containsComponentOfSameType: aComponent ]
