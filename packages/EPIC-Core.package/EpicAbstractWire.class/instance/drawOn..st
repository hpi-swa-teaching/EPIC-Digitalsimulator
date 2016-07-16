drawing
drawOn: aCanvas
	self drawAnchorPoints do: [ :section |
		section overlappingPairsDo: [ :p1 :p2 |
			(EpicConfiguration instanceFor: self) snapToGrid
				ifTrue: [aCanvas line: (p1 roundTo: EpicGrid gridSize) to: (p2 roundTo: EpicGrid gridSize) width: self lineWidth color: self wireColor]
				ifFalse: [aCanvas line: p1 to: p2 width: self lineWidth color: self wireColor]
		]
	]