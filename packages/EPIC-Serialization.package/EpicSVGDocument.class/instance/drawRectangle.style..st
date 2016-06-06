as yet unclassified
drawRectangle: aRectangle style: aStyle

	| rectangleElement |
	rectangleElement := XMLElement named: self rectangleElementName.
	rectangleElement
		attributeAt: 'x' put: aRectangle left asString;
		attributeAt: 'y' put: aRectangle top asString;
		attributeAt: 'width' put: aRectangle width asString;
		attributeAt: 'height' put: aRectangle height asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: rectangleElement