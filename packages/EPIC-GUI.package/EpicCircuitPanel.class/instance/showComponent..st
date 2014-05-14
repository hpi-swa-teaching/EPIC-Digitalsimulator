visual accessing
showComponent: aComponent
	self addMorph: aComponent.
	aComponent eventHandler: self componentHandler.
	aComponent ports do: [:eachPort | eachPort eventHandler: self portHandler].
	aComponent when: #deleted send: #removeComponent: to: self with: aComponent.
	aComponent connectedWires do: [:eachWire | 
		self showWire: eachWire
	]