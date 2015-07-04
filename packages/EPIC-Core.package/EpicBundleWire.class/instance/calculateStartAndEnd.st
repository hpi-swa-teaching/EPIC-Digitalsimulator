drawing
calculateStartAndEnd
	"TODO nil check nötig? Funktionsname richtig?"
	self wires ifNotNil: [
		self anchorPoints removeAll.
		self addAnchorPoint: self calculateStartPoint.
		self addAnchorPoint: self calculateEndPoint.
		self updateBounds]