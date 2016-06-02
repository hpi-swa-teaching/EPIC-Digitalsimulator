as yet unclassified
svgRectangleFor: aRectangle

	| svgRectangle |
	svgRectangle := XMLElement named: self rectangleElementName.
	svgRectangle
		attributeAt: 'x' put: aRectangle left asString;
		attributeAt: 'y' put: aRectangle top asString;
		attributeAt: 'width' put: aRectangle width asString;
		attributeAt: 'height' put: aRectangle height asString.
	^ svgRectangle