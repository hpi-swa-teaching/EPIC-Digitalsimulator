drawing
drawOn: aCanvas

	| x y |
	
	x := 0.
	y := 0.
	
	[ x <= self extent x ] whileTrue: 
	[
		aCanvas
			line: (self position + (x@0))
			to: (self position + (x@(self extent y)))
			color: Color veryLightGray.
		x := x + self gridSize.
	].

	[ y <= self extent y ] whileTrue: 
	[
		aCanvas
			line: (self position + (0@y))
			to: (self position + ((self extent x)@y))
			color: Color veryLightGray.
		y := y + self gridSize.
	].

	aCanvas frameRectangle: self bounds width: 10 color: Color darkGray 