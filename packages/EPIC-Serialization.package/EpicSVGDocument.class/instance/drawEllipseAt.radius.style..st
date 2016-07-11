as yet unclassified
drawEllipseAt: aCenterPoint radius: aRadius style: aStyle

	| ellipseElement |
	ellipseElement := XMLElement named: self ellipseElementName.
	ellipseElement
		attributeAt: 'cx' put: aCenterPoint x asFloat asString;
		attributeAt: 'cy' put: aCenterPoint y asFloat asString;
		attributeAt: 'rx' put: aRadius x asFloat asString;
		attributeAt: 'ry' put: aRadius y asFloat asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: ellipseElement