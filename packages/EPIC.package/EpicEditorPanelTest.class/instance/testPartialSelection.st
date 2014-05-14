selection testing
testPartialSelection
	| selection |
	self assert: [self panel selectedComponents isEmpty].
	
	self panel selectComponents: self panel components allButFirst.
	selection := self panel selectedComponents.
	self panel components withIndexDo: [:eachComponent :eachIndex |
		self assert: [(eachIndex = 1) xor: (selection includes: eachComponent)]
	].

	self panel deselectAllComponents.
	self assert: [self panel selectedComponents isEmpty]