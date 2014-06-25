helper messages
moveComponentToEditorPanel: aComponent
	self assert: [ (self containsComponentOfSameType: aComponent) not ].
	self 
		drag: aComponent 
		fromPrototypePanelTo: (self window editorPanel bounds left + 400) @ (self window editorPanel bounds top + 200) .
	self assert: [ self containsComponentOfSameType: aComponent ]
