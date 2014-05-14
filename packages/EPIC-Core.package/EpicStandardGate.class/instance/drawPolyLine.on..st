drawing
drawPolyLine: aCollectionOfPoints on: aCanvas
	aCollectionOfPoints overlappingPairsDo: [:startPoint :endPoint |
		aCanvas 
			line: startPoint
			to: endPoint
			color: Color black
	]
