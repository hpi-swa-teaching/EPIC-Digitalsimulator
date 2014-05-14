drawing
drawOn: aCanvas
	"aCanvas drawPolygon: vertices color: self fillColor borderWidth: 1 borderColor: Color black."
	aCanvas fillRectangle: self bounds color: self fillColor.
	aCanvas frameRectangle: self bounds color: Color black. 