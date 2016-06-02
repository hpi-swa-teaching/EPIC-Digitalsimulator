as yet unclassified
clipPathWith: aRectangle

	| clipPath |
	clipPath := XMLElement named: self clipPathElementName.
	clipPath attributeAt: 'id' put: self nextId asString.
	^ clipPath addElement: (self svgRectangleFor: aRectangle)