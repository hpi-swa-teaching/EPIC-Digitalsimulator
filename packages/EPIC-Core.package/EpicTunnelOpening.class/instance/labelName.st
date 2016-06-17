accessing
labelName
	| label |
	label := super labelName.
	(self number > self class resetCounterValue) ifTrue: [
		label := label, self number].
	^ label