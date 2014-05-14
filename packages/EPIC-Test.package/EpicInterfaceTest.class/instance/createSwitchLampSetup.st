helper messages
createSwitchLampSetup
	| offset |
	offset := 0@0.
	self window prototypeBox tabBar tabs do: [:eachTab |
		self window prototypeBox tabBar tabClicked: eachTab. 
		self window prototypeBox activePanel submorphs
			select: [:eachComponent | self isLampOrSwitch: eachComponent]
			thenDo: [:eachComponent | 
				self moveComponentToEditorPanel: eachComponent.
				eachComponent position: eachComponent position + offset.
				offset := offset + (200@0)
			]
	].
	self assert: [self containsComponents]