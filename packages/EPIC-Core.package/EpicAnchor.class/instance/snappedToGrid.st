grid snapping
snappedToGrid
	| newPosition |
	newPosition := self point roundTo: EpicGrid gridSize.
	"(self bounds containsPoint: (newPosition + (self grid gridSize @ self grid gridSize)) )
		ifFalse: [newPosition := newPosition - (self grid gridSize @ self grid gridSize)]."
	^ newPosition