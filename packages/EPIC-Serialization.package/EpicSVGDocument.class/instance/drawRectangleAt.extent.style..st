as yet unclassified
drawRectangleAt: aPoint extent: anExtent style: aStyle

	| rectangleElement |
	rectangleElement := XMLElement named: self rectangleElementName.
	rectangleElement
		attributeAt: 'x' put: aPoint x asFloat asString;
		attributeAt: 'y' put: aPoint y asFloat asString;
		attributeAt: 'width' put: anExtent x asFloat asString;
		attributeAt: 'height' put: anExtent y asFloat asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: rectangleElement