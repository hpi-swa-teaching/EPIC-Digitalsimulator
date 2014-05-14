timing
realTimeFor: aTime
	^ aTime ifNotNil: 
		[(aTime * self class timeMultiplier) ceiling asInteger]