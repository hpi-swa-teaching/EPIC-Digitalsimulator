as yet unclassified
getTableValues
	| collection testCase |
	collection := OrderedCollection new.
	(self contentMorph model children at: #children) do: [ :each |
		testCase := OrderedCollection new.
		testCase add: (self humanReadableToTestCaseData: each first);
			add: (self humanReadableToTestCaseData: each second);
			add: (each third == 'true').
		collection add: testCase.
		].
	^ collection