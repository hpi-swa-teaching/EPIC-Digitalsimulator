accessing
addComponent: aComponent
	super addComponent: aComponent.
	aComponent toggleLabelOnHover: false.
	aComponent addLabel