drawing-polygons
drawPolygon: vertices color: aColor borderWidth: aWidth borderColor: aBorderColor
	self target
		fillPolygon: vertices
		fillColor: aColor
		borderWidth: aWidth
		borderColor: aBorderColor