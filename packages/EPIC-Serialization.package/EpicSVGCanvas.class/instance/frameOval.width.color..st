drawing-ovals
frameOval: aRectangle width: aWidth color: aColor
	self target
		frameEllipseAt: aRectangle center
		radius: aRectangle extent / 2
		borderWidth: aWidth
		borderColor: aColor
		