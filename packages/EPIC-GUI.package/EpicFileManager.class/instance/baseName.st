accessing
baseName
	| location |	
	location := self fileName findLastOccurrenceOfString: '.' startingAt: 1.
	
	^ self fileName copyFrom: 1 to: location - 1