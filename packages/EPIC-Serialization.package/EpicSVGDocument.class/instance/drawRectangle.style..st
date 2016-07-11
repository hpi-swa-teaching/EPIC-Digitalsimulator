as yet unclassified
drawRectangle: aRectangle style: aStyle

	| rectangleElement |
	rectangleElement := XMLElement named: self rectangleElementName.
	rectangleElement
		attributeAt: 'x' put: aRectangle left asFloat asString;
		attributeAt: 'y' put: aRectangle top asFloat asString;
		attributeAt: 'width' put: aRectangle width asFloat asString;
		attributeAt: 'height' put: aRectangle height asFloat asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: rectangleElement