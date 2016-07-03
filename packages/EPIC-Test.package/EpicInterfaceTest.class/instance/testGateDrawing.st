gate testing
testGateDrawing
	EpicBaseComponent allSubclasses 
		select: [ :eachSubclass | eachSubclass allSubclasses isEmpty ]
		thenDo: [ :eachSubclass | | gate |
			gate := eachSubclass new.
			self shouldnt: [ gate imageForm ] raise: Error.
			gate delete
		]