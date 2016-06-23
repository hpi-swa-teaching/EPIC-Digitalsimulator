accessing
labelName
	| label |
	self customLabelName ifNotNil: [^ self customLabelName].
	label := super labelName.
	(self number > self class resetCounterValue) ifTrue: [
		label := label, self number].
	^ label