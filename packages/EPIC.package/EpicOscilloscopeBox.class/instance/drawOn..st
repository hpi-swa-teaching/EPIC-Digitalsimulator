as yet unclassified
drawOn: aCanvas
	aCanvas fillRectangle: self bounds color: (Color r: 0.84 g: 0.84 b: 0.84).
	aCanvas
		line: self position +( (self extent x - 26)@0)
		to:  self position +( (self extent x - 26)@(self extent y))
		width: 2
		color: Color gray.