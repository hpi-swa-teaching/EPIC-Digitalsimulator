gate testing
testGateDrawing
	EpicGate allSubclasses 
		select: [ :eachSubclass | eachSubclass allSubclasses isEmpty ]
		thenDo: [ :eachSubclass | | gate |
			gate := eachSubclass new.
			self shouldnt: [ gate imageForm ] raise: Error.
			gate delete
		]