as yet unclassified
drawPolygon: vertices style: aStyle

	| polygonElement |
	polygonElement := XMLElement named: self polygonElementName.
	polygonElement
		attributeAt: 'points' put: (self pointStringFromVertices: vertices);
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: polygonElement