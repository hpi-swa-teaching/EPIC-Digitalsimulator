initialization
configurationStateChanged

	self settingsMenu activateAllEntries.
	((EpicConfiguration instanceFor: self) componentStyle = #epic)
		ifTrue: [self settingsMenu deactivateEntries: #(2)].
	((EpicConfiguration instanceFor: self) componentStyle = #iec)
		ifTrue: [self settingsMenu deactivateEntries: #(3)].
	((EpicConfiguration instanceFor: self) componentStyle = #ansi)
		ifTrue: [self settingsMenu deactivateEntries: #(4)].
	((EpicConfiguration instanceFor: self) componentStyle = #din)
		ifTrue: [self settingsMenu deactivateEntries: #(5)].
	self changed