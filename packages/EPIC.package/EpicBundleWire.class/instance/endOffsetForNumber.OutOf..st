drawing
endOffsetForNumber: aNumber OutOf: count
	|vector diff len|
	
	vector := self endPoint - (self anchorPoints at: (self anchorPoints size)-1) point.
	len := (vector x squared + vector y squared) sqrt.
	diff := (-1*(self class connectorLength) *(vector y) / len) rounded @ ((self class connectorLength) *(vector x) / len) rounded .
	
	^((2*(diff x)*aNumber / (count+1)) rounded @ (2*(diff y)*aNumber / (count+1)) rounded) - diff.