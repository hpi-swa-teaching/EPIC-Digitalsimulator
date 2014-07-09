component testing
createCollectionOfTestCases: anOrderedCollection of: aPortNumber
	self inputPorts isEmpty ifTrue: [^ self].
	
	(aPortNumber > self inputPorts size)
	ifTrue: [|aCollectionOfExpectedValues| 
		aCollectionOfExpectedValues := self outputPorts collect: [ :each | false].
		testCases add: {anOrderedCollection.aCollectionOfExpectedValues.false}.]
	ifFalse: [| aCollectionOfInputValues |
		aCollectionOfInputValues := anOrderedCollection copy. 
		aCollectionOfInputValues add: false.
		self createCollectionOfTestCases: aCollectionOfInputValues of: aPortNumber+1.
		aCollectionOfInputValues := anOrderedCollection copy.
		aCollectionOfInputValues add: true.
		self createCollectionOfTestCases: aCollectionOfInputValues of: aPortNumber+1.]