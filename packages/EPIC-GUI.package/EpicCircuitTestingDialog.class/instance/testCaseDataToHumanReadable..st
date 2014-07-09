as yet unclassified
testCaseDataToHumanReadable: aCollection
	| string |
	string := ''.
	aCollection do: [ :eachValue |
		string := string, (eachValue ifTrue: ['1'] ifFalse: ['0']) ].
	 ^ string