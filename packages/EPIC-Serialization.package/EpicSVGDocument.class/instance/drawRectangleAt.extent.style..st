as yet unclassified
drawRectangleAt: aPoint extent: anExtent style: aStyle

	| rectangleElement |
	rectangleElement := XMLElement named: self rectangleElementName.
	rectangleElement
		attributeAt: 'x' put: aPoint x asString;
		attributeAt: 'y' put: aPoint y asString;
		attributeAt: 'width' put: anExtent x asString;
		attributeAt: 'height' put: anExtent y asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: rectangleElement