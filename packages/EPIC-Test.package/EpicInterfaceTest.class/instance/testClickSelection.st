selection testing
testClickSelection
	| component |
	self createSwitchLampSetup.
	component := self editorPanel components first.
	self editorPanel deselectAllComponents.
	self assert: [ self editorPanel selectedComponents isEmpty ].
	self currentHand position:  component center.
	self editorPanel 
		mouseDown: (self blueButtonEvent: #mouseDown for: self currentHand)
		onComponent: component.
	self editorPanel 
		mouseUp: (self blueButtonEvent: #mouseUp for: self currentHand)
		onComponent: component.
	self assert: [ self editorPanel selectedComponents includes: component ]