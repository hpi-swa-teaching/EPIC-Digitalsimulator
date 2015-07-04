drawing
startOffsetForNumber: aNumber OutOf: count
	"TODO vielleicht entfernen? Alle kabel an einem Punkt starten lassen?"
	|vector diff len|
	
	vector := (self anchorPoints at: 2) point - self startPoint.
	len := (vector x squared + vector y squared) sqrt.
	diff := (-1*(self class connectorLength) *(vector y) / len) rounded @ ((self class connectorLength) *(vector x) / len) rounded.

	^((2*diff x*aNumber / (count+1)) rounded @ ((2*diff y*aNumber / (count+1)) rounded)) - diff.