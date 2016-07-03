drawing
drawPolygon: aPolygon on: aCanvas
	aCanvas 
		drawPolygon: aPolygon vertices
		color: self fillColor
		borderWidth: 1 
		borderColor: Color black