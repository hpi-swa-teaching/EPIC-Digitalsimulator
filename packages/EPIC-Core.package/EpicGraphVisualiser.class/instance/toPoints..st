as yet unclassified
toPoints: anOrderedCollection
	| points x xratio |
	points := OrderedCollection new.
	x := 0.
	xratio := (self width / anOrderedCollection size) rounded.
	anOrderedCollection do: [:i |
		i 
			ifTrue: [
			points addLast: ((x * xratio + (xratio / 2)) rounded) @ ((self height / 3) rounded)]
			ifFalse: [
			points addLast: ((x * xratio + (xratio / 2)) rounded) @ ((self height / 3 * 2) rounded)].
		x := x + 1].
	^ points