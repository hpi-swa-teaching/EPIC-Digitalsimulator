as yet unclassified
setState
	(self inputValues fifth and: self clockState not) ifTrue:
		[1 to: 4 do: [:i |
			self state at: i put: (self inputValues at: i)]]