event handling
handleCopyPasteSequences: anEvent
	(self copySequenceIsPressed: anEvent)
		ifTrue: [ self copySelectedComponents ].
	(self cutSequenceIsPressed: anEvent)
		ifTrue: [ self cutSelectedComponents ].
	(self pasteSequenceIsPressed: anEvent)
		ifTrue: [ self pasteComponents ]