drawing
drawOn: aCanvas
	"aCanvas drawPolygon: vertices color: self fillColor borderWidth: 1 borderColor: Color black."
	aCanvas fillRectangle: self bounds color: Color white.
	aCanvas frameRectangle: self bounds color: Color black.
	aCanvas drawString: self label  at: self center - (3@5).