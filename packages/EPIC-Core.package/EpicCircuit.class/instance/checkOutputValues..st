component testing deprecated
checkOutputValues: aCollectionOfCopies
	| testSuccessful |
	testSuccessful := true.
	1 to: (self testCases size) do: [ :caseNumber  | 
		((aCollectionOfCopies at: caseNumber) outputValues hasEqualElements: ((testCases at: caseNumber) second asOrderedCollection)) 
			ifTrue: [(self testCases at: caseNumber) at:3 put: true] 
			ifFalse: [(self testCases at: caseNumber) at:3 put: false. testSuccessful := false].].
	^ testSuccessful