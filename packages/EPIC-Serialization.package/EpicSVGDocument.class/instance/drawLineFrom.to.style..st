as yet unclassified
drawLineFrom: aStartPoint to: anEndPoint style: aStyle

	| lineElement |
	lineElement := XMLElement named: self lineElementName.
	lineElement
		attributeAt: 'x1' put: aStartPoint x asString;
		attributeAt: 'y1' put: aStartPoint y asString;
		attributeAt: 'x2' put: anEndPoint x asString;
		attributeAt: 'y2' put: anEndPoint y asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: lineElement