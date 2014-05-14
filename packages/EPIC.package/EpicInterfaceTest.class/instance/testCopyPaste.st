serialization testing
testCopyPaste
	self testCombining.
	self editorPanel 
		selectAllComponentsAndWires;
		copySelectedComponents;
		pasteComponents.
	self assert: [ (self xmlForContentsOf: self editorPanel components first) 
		= (self xmlForContentsOf: self editorPanel components last) 
	]