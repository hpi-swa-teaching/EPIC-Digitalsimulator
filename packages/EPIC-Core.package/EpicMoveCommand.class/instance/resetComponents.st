command handling
resetComponents

	self components do:[ :eachComponent |
		eachComponent position: (self componentStartPositions at: eachComponent) ]