initialization
initializeBalloonText

	| documentationSelector |
	documentationSelector := (self class asString, self balloonHelpSelectorPostfix) asSymbol.
	(self helpClass class selectors identityIncludes: documentationSelector)
		ifTrue: [self balloonText: (self helpClass perform: documentationSelector)]