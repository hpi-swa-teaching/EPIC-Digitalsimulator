accessing
setState
	(self inputValues fifth and: self clockState not) ifTrue:
		[self state at: 1 put: self inputValues first.
		self state at: 2 put: self inputValues second.
		self state at: 3 put: self inputValues third.
		self state at: 4 put: self inputValues fourth]