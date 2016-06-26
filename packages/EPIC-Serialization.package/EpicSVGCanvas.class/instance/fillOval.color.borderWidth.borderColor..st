drawing-ovals
fillOval: aRectangle color: aColor borderWidth: aWidth borderColor: aBorderColor
	| radius |
	radius := aRectangle extent / 2.
	self target
		fillEllipseAt: aRectangle center
		radius: radius
		color: aColor
		borderWidth: aWidth
		borderColor: aBorderColor