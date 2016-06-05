as yet unclassified
transformGroupWith: aTransformMatrix

	| transformGroup |
	transformGroup := self createGroup.
	transformGroup
		attributeAt: 'transform'
		put:
			'matrix(',
			aTransformMatrix a11 asString, ' ',
			aTransformMatrix a21 asString, ' ',
			aTransformMatrix a12 asString, ' ',
			aTransformMatrix a22 asString, ' ',
			aTransformMatrix a13 asString, ' ',
			aTransformMatrix a23 asString, ')'.
	
	self targetElement addElement: transformGroup.
	^ transformGroup