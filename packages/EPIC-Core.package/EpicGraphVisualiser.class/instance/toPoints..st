graph handling
toPoints: anOrderedCollection
	| points x xratio factor |
	points := OrderedCollection new.
	x := 0.
	xratio := (self width / anOrderedCollection size) rounded.
	anOrderedCollection do: [:i |
		i ifTrue: [factor := 1] ifFalse: [factor := 2].
		points addLast: ((x * xratio + (xratio / 2)) rounded) @ ((self height / 3 * factor) rounded).
		x := x + 1].
	^ points