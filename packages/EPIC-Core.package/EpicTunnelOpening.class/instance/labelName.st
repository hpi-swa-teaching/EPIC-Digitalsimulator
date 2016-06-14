accessing
labelName
	| label |
	label := super labelName.
	(self number > 0) ifTrue: [
		label := label, self number].
	^ label