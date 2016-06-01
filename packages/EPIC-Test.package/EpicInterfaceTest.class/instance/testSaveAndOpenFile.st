serialization testing
testSaveAndOpenFile
	| xml |
	self createSwitchLampSetup.
	self editorPanel updateCircuitPosition.
	self window saveAs: self temporaryCircuitFile.
	xml := self editorPanel circuit asXMLDocument asString.
	self window open: self temporaryCircuitFile.
	
	self assert: [ self editorPanel circuit asXMLDocument asString = xml ]