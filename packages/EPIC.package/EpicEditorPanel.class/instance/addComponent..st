accessing
addComponent: aComponent
	aComponent isDummy ifTrue: [ | realComponent |
		realComponent := (self parseCircuitFrom: aComponent xmlDocument).
		realComponent position: aComponent position.
		self addComponent: realComponent.
		^ self
	].
	super addComponent: aComponent.
	self circuit addSubComponent: aComponent.
	self snapToGridIfAppropriate: aComponent
