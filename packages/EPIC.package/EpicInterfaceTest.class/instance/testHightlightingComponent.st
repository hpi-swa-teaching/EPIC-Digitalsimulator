selection testing
testHightlightingComponent
	| component cursor |
	self createSwitchLampSetup.
	component := self editorPanel components first.
	"enter"
	self currentHand position: component topLeft - (1@1).
	self editorPanel highlight: (self moveEventFor: self currentHand to: component topLeft) Component: component.
	cursor := (HandMorph new showTemporaryCursor: Cursor webLink) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	"leave"	
	self editorPanel dehighlight: (self moveEventFor: self currentHand to: component topLeft - (1@1)) Component: component.
	cursor := (HandMorph new showTemporaryCursor: Cursor normal) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ]
	