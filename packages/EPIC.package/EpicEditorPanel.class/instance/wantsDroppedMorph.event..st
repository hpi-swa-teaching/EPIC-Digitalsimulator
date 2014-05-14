dropping/grabbing
wantsDroppedMorph: aMorph event: anEvent
	^ self expectedMorph
		ifNil:  [super wantsDroppedMorph: aMorph event: anEvent]
		ifNotNil: [aMorph == self expectedMorph]