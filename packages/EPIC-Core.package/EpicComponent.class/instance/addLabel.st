naming
addLabel
	self label ifNotNil: [self removeMorph: self label].
	self label: self labelName asMorph.
	self addMorphCentered: self label.
	self label position:
		self label position x @ (self position y + self height + self class labelMargin)