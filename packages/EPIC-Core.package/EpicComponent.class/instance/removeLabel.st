naming
removeLabel
	self label ifNil: [^ self].
	self removeMorph: self label.
	self label: nil