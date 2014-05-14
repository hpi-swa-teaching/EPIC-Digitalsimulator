dropping/grabbing
wantsToBeDroppedInto: aMorph
	^ self expectedDropTarget 
		ifNil: [super wantsToBeDroppedInto: aMorph]
		ifNotNil: [aMorph == self expectedDropTarget]