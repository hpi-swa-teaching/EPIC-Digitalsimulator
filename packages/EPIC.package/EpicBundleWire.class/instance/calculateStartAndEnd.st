drawing
calculateStartAndEnd
	|startP endP|
	wires ifNotNil: [
		startP:= 	((wires collect: [:each | each startPoint x.]) max + self bundleOffset)@
							    	((wires collect: [:each | each startPoint y.]) average rounded).
		endP:= 	((wires collect: [:each | each endPoint x.]) min - self bundleOffset)@
  								((wires collect: [:each | each endPoint y.]) average rounded).
		self anchorPoints removeAll.
		self addAnchorPoint: startP.
		self addAnchorPoint: endP.
		self updateBounds .
	]