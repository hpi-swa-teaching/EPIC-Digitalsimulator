gate testing
testGateCreation
	self assert: [self containsNoComponents].
	self window prototypeBox tabBar tabs do: [ :eachTab | 
		self window prototypeBox tabBar tabClicked: eachTab.
		self window prototypeBox activePanel submorphsDo: [ :eachComponent | 
			self moveComponentToEditorPanel: eachComponent 
		] 
	].
	self assert: [self containsComponents]