as yet unclassified
clipGroupWith: aRectangle

	| clipPath clipGroup |
	clipPath := self clipPathWith: aRectangle.
	self defsElement addElement: clipPath.
	
	clipGroup := self createGroup.
	clipGroup
		attributeAt: 'style'
		put: 'clip-path: url(#', (clipPath attributeAt: 'id'), ')'.
	
	self targetElement addElement: clipGroup.
	^ clipGroup