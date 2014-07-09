selection testing
testHightlightingWire
	| wire cursor width |
	self createSwitchLampSetup.
	wire := EpicWire from: self editorPanel components first ports first to: self editorPanel components second ports first.
	self editorPanel addWire: wire.
	width := wire lineWidth.
	
	"enter"
	self currentHand position: wire startPoint - (1@1).
	self editorPanel highlight: (self moveEventFor: self currentHand to: wire startPoint) Wire: wire.
	cursor := (HandMorph new showTemporaryCursor: Cursor crossHair) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	self assert: [ wire lineWidth = (width + EpicWire lineWidthIncrease) ].
	"leave"	
	self editorPanel dehighlight: (self moveEventFor: self currentHand to: wire startPoint - (1@1)) Wire: wire.
	cursor := (HandMorph new showTemporaryCursor: Cursor normal) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	self assert: [ wire lineWidth = width ]
	