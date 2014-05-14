deletion testing
testPanelDeletion
	| components |
	components := self panel components.
	self panel delete.
	
	components do: [:eachComponent |
		self assert: [eachComponent owner isNil]
	].