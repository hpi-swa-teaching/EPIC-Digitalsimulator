initialization
initializeSegments
	self bottomSegment: (EpicDisplaySegment horizontalAt: self center + (0@30)).
	self bottomLeftSegment: (EpicDisplaySegment verticalAt: self center + (15 negated @15)).
	self bottomRightSegment: (EpicDisplaySegment verticalAt: self center + (15@15)).
	self centerSegment: (EpicDisplaySegment horizontalAt: self center).
	self topSegment: (EpicDisplaySegment horizontalAt: self center - (0@30)).
	self topLeftSegment: (EpicDisplaySegment verticalAt: self center - (15@15)).
	self topRightSegment: (EpicDisplaySegment verticalAt: self center + (15@15 negated)).