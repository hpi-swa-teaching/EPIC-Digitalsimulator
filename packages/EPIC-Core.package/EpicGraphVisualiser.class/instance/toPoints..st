as yet unclassified
toPoints: anOrderedCollection
	| points x xratio |
	points := OrderedCollection new.
	x := 0.
	xratio := self width / anOrderedCollection size.
	anOrderedCollection do: [:i |
		i 
			ifTrue: [
			points addLast: (x * xratio + (xratio / 2)) @ (self height / 3)]
			ifFalse: [
			points addLast: (x * xratio + (xratio / 2)) @ (self height / 3 * 2)].
		x := x + 1].
	^ points