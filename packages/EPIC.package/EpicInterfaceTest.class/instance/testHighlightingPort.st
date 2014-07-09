selection testing
testHighlightingPort
	| port cursor |
	self createSwitchLampSetup.
	port := self editorPanel components second ports first.
	"enter"
	self currentHand position: port topLeft - (1@1).
	self editorPanel highlight: (self moveEventFor: self currentHand to: port topLeft) Port: port.
	cursor := (HandMorph new showTemporaryCursor: Cursor normal) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	"leave"	
	self editorPanel dehighlight: (self moveEventFor: self currentHand to: port topLeft - (1@1)) Port: port.
	cursor := (HandMorph new showTemporaryCursor: Cursor normal) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	"enter + leave to component"
	self currentHand position: port bottomRight - (1@1).
	self editorPanel dehighlight: (self moveEventFor: self currentHand to: port bottomRight + (2@2)) Port: port.
	cursor := (HandMorph new showTemporaryCursor: Cursor webLink) temporaryCursor.
	self assert: [ self currentHand temporaryCursor isNil not ].
	self assert: [ self currentHand temporaryCursor bits = cursor bits ].
	