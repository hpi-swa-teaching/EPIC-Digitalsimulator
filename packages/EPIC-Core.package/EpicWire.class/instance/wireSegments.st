wire segments
wireSegments
	^ self allDrawAnchorPoints asArray overlappingPairsCollect: [ :p1 :p2 | 
		EpicWireSegment from: p1 to: p2
	]