command handling
fetchComponentPositions

	self componentStartPositions: Dictionary new.
	self components do: [ :aComponent |
		self componentStartPositions at: aComponent put: aComponent position ]