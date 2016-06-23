accessing
labelName
	| label |
	self customLabelName ifNotNil: [^ self customLabelName].
	label := super labelName.
	(self number > 0) ifTrue: [
		label := label, self number].
	^ label