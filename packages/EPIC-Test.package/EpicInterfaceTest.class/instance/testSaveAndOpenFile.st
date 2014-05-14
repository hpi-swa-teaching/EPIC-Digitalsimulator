serialization testing
testSaveAndOpenFile
	| xml |
	self createSwitchLampSetup.
	self editorPanel updateCircuitPosition.
	self window saveAs: self temporaryCircuitName.
	xml := self editorPanel circuit asXMLDocument asString.
	self window open: self temporaryCircuitName.
	
	self assert: [ self editorPanel circuit asXMLDocument asString = xml ]