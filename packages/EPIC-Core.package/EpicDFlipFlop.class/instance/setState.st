as yet unclassified
setState
	(self inputValues second and: self clockState not) ifTrue:
		[self state: self inputValues first].