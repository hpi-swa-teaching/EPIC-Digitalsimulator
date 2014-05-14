deletion testing
testRemainingComponents
	| componentsToDelete remainingComponents |
	componentsToDelete := self halfOfComponents.
	remainingComponents := self panel components copyWithoutAll: componentsToDelete.
	self panel selectComponents: componentsToDelete.
	self panel deleteSelectedComponents.
	
	self panel components do: [:eachComponent |
		self assert: [remainingComponents includes: eachComponent]
	].
	remainingComponents do: [:eachComponent |
		self assert: [self panel submorphs includes:eachComponent]
	].