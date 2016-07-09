*EPIC-GUI
filetypeName
	| location |
	location := self localName findLastOccurrenceOfString: '.' startingAt: 1.
	
	^self localName copyFrom: location + 1 to: (self localName size).