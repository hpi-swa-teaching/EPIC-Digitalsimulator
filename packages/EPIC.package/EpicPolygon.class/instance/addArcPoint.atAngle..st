accessing
addArcPoint: aRectangle atAngle: aRadian
	self addPoint: 
		(aRectangle extent / 2) * ((aRadian cos) @ (aRadian sin))
		+ aRectangle center