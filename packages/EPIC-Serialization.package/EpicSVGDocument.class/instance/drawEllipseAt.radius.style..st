as yet unclassified
drawEllipseAt: aCenterPoint radius: aRadius style: aStyle

	| ellipseElement |
	ellipseElement := XMLElement named: self ellipseElementName.
	ellipseElement
		attributeAt: 'cx' put: aCenterPoint x asString;
		attributeAt: 'cy' put: aCenterPoint y asString;
		attributeAt: 'rx' put: aRadius x asString;
		attributeAt: 'ry' put: aRadius y asString;
		attributeAt: 'style' put: aStyle.
		
	self targetElement addElement: ellipseElement