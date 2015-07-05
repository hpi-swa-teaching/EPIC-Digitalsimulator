accessing
moveAnchorPointsBy: anOffset

	self anchorPoints do: [ :eachPoint |
		eachPoint changeAnchorBy: anOffset]