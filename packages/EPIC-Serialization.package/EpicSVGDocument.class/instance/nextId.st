accessing
nextId
	
	| returnId |
	returnId := nextId.
	nextId := nextId + 1.
	^ returnId