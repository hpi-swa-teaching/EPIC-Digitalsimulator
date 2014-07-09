component testing deprecated
createCopiesWithTestInput
	| CollectionOfCopies |
	CollectionOfCopies := OrderedCollection new.
	self testCases do: [ :eachCase | CollectionOfCopies add: self copy].
	1 to: (testCases size) do: [ :caseNumber  | 
		1 to: (self inputPorts size) do: [ :portNumber |
			((CollectionOfCopies at: caseNumber) innerInputPorts at: portNumber) setValue: ((testCases at: caseNumber) first at: portNumber)].
		Transcript cr;cr.].
	^CollectionOfCopies