drawing
drawOn: aCanvas
	self drawAnchorPoints do: [ :section |
		section overlappingPairsDo: [ :p1 :p2 |
			aCanvas line: p1 to: p2 width: self lineWidth color: self wireColor
		]
	]