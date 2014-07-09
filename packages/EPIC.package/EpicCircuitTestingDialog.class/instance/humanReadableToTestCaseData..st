as yet unclassified
humanReadableToTestCaseData: aString
	| collection |
	collection := OrderedCollection new.
	aString do: [ :eachValue |
		collection add: (eachValue ==$1) ].
	 ^ collection