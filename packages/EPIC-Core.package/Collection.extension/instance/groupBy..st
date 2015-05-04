*EPIC-Core
groupBy: keyBlock
	| result |
	result := Dictionary new.
	self do: 
		[:each | 
		| key |
		key := keyBlock value: each.
		(result includesKey: key)
			ifFalse: [result at: key put: OrderedCollection new].
		(result at: key)
			add: each].
	^ result