event handling
keyPressed: anEvent
	self 
		handleActionSequences: anEvent;
		handleSelectionSequences: anEvent;
		handleCombiningSequences: anEvent;
		handleCopyPasteSequences: anEvent