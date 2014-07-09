visual accessing
showTestLight: aTestLight
	self addMorph: aTestLight.
	aTestLight eventHandler: self testlightHandler	