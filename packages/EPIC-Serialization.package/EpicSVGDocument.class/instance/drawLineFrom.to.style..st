as yet unclassified
drawLineFrom: aStartPoint to: anEndPoint style: aStyle

	| lineElement |
	lineElement := XMLElement named: self lineElementName.
	lineElement
		attributeAt: 'x1' put: aStartPoint x asFloat asString;
		attributeAt: 'y1' put: aStartPoint y asFloat asString;
		attributeAt: 'x2' put: anEndPoint x asFloat asString;
		attributeAt: 'y2' put: anEndPoint y asFloat asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: lineElement