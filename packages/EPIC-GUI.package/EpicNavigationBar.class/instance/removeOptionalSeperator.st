execution
removeOptionalSeperator
	self submorphs size > 1 ifTrue:
	[self removeMorph: self submorphs last]