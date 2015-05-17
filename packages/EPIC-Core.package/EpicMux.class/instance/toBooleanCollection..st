as yet unclassified
toBooleanCollection: aPortCollection
	| booleanCollection |
	booleanCollection := aPortCollection collect:
		[:a | a value].
	^ booleanCollection