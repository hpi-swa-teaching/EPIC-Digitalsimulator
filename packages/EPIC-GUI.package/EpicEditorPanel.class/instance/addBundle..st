accessing
addBundle: aBundle

	aBundle eventHandler: self wireHandler.
	aBundle when: #deleted send: #removeWire: to: self with: aBundle.
	self addMorphNearBack: aBundle.
	self triggerEvent: #wireAdded with: aBundle.
	self addMorphFront: aBundle	