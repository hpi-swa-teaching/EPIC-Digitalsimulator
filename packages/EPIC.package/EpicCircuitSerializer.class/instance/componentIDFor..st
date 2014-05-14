helper messages
componentIDFor: aComponent
	^ aComponent = self circuit
		ifTrue: ['self']
		ifFalse: ['component', (self circuit subComponents indexOf: aComponent) asString]