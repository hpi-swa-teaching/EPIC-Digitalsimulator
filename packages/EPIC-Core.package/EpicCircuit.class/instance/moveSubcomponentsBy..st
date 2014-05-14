layout
moveSubcomponentsBy: aDelta
	self subWires, self subComponents do: [ :eachElement |
		eachElement position: eachElement position + aDelta
	]