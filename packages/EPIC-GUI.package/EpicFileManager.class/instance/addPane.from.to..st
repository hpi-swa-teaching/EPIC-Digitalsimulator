ui creation
addPane: aPane from: aUpperPoint to: aLowerPoint
	^ {
		(aPane).
		(aUpperPoint corner: aLowerPoint).
		(0 @ 0 corner: 0 @ 0)
	}