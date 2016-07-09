*EPIC-GUI
baseName
	| location |	
	location := self localName findLastOccurrenceOfString: '.' startingAt: 1.
	
	^ self localName copyFrom: 1 to: location - 1