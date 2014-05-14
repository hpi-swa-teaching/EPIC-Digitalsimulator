drawing
drawConnectorsOn: aCanvas
	|diff1 diff2 len1 len2 vector1 vector2|
	
	vector1 := (self anchorPoints at: 2) point - self startPoint.
	vector2 := self endPoint - (self anchorPoints at: (self anchorPoints size)-1) point.
	len1 := (vector1 x squared + vector1 y squared) sqrt.
	len2 := (vector2 x squared + vector2 y squared) sqrt.
	diff1 := (-1*(self class connectorLength) *(vector1 y) / len1) rounded @ (((self class connectorLength) *(vector1 x) / len1) rounded).
	diff2 := (-1*(self class connectorLength) *(vector2 y) / len2) rounded @ (((self class connectorLength) *(vector2 x) / len2) rounded).
	
	aCanvas 	line:  	self startPoint - diff1 
				to: 		self startPoint + diff1
				width: 	self lineWidth 
				color: 	self wireColor. 
	
	aCanvas 	line:  	self endPoint - diff2
				to: 		self endPoint + diff2
				width: 	self lineWidth 
				color: 	self wireColor.