as yet unclassified
setState
	(self inputValues second and: self inputValues first and: self clockState not) ifTrue:
		[self state: self state not].