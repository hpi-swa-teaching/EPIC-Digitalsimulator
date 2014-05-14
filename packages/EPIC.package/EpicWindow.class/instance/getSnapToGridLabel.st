grid
getSnapToGridLabel

	self editorPanel snapToGrid 
		ifTrue: [ ^'Disable snap to grid'];
		ifFalse: [ ^'Enable snap to grid' ].