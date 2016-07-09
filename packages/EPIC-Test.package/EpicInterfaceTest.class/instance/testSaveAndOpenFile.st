serialization testing
testSaveAndOpenFile
	| xml |
	self createSwitchLampSetup.
	self editorPanel updateCircuitPosition.
	self window saveAs: (FileStream forceNewFileNamed: self temporaryCircuitFilePath).
	xml := self editorPanel circuit asXMLDocument asString.
	self window open: (FileStream fileNamed: self temporaryCircuitFilePath).
	
	self assert: [ self editorPanel circuit asXMLDocument asString = xml ]