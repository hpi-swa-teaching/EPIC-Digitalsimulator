as yet unclassified
addOptionalSeperator
	self submorphs size > 0 ifTrue: 
	[self addMorphBack: (StringMorph contents: '>')]