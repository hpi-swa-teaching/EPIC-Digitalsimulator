initialization
addSegmentsAsSubmorphs
	self addMorph: self bottomSegment.
	self addMorph: self bottomLeftSegment.
	self addMorph: self bottomRightSegment.
	self addMorph: self centerSegment.
	self addMorph: self topSegment.
	self addMorph: self topLeftSegment.
	self addMorph: self topRightSegment