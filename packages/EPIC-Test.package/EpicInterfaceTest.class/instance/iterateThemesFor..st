helper messages
iterateThemesFor: aGate
	| componentStyles morph lastImageForm originalImageForm currentImageForm |
	componentStyles := #(#ansi #din #iec #epic).
	morph := Morph new.
	EpicConfiguration registerInstance: morph.
	morph addMorph: aGate.
	(EpicConfiguration instanceFor: morph ) componentStyle: #epic.
	self shouldnt: [ currentImageForm := aGate imageForm  ] raise: Error.
	originalImageForm := currentImageForm.
	componentStyles do: [:style | 
		lastImageForm := currentImageForm.
		(EpicConfiguration instanceFor: morph ) componentStyle: style.
		self shouldnt: [ currentImageForm := aGate imageForm  ] raise: Error.
		"self assert: [ (currentImageForm bits = lastImageForm bits) not]."
		].
	self assert: [originalImageForm bits = currentImageForm bits].
	EpicConfiguration unregisterInstance: morph