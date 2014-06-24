testing
testMorphHiding
	| otherMorphs |
	
	otherMorphs := World submorphs select: [:each | each ~~ self window].
	self assert: [otherMorphs allSatisfy: [:each | each visible not]]