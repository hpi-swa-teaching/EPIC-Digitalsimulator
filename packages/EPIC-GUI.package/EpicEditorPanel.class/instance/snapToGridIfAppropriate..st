grid snapping
snapToGridIfAppropriate: aComponent

	| newPosition |
	(self snapToGrid) ifTrue: [
		newPosition := self position + ((aComponent center - self position) roundTo: self grid gridSize). 
		(self bounds containsPoint: (newPosition + (self grid gridSize @ self grid gridSize)) )
			ifFalse: [newPosition := newPosition - (self grid gridSize @ self grid gridSize)].
		aComponent center: newPosition.]

	
	