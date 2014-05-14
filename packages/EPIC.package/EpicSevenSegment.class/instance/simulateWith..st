simulation
simulateWith: inputValues
	self topSegment setPowered: inputValues first.
	self topRightSegment setPowered: inputValues second.
	self bottomRightSegment setPowered: inputValues third.
	self bottomSegment setPowered: inputValues fourth.
	self bottomLeftSegment setPowered: inputValues fifth.
	self topLeftSegment setPowered: (inputValues at: 6).
	self centerSegment setPowered: (inputValues at: 7).