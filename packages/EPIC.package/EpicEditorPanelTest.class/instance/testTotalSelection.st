selection testing
testTotalSelection
	self assert: [self panel selectedComponents isEmpty].
	
	self panel selectAllComponentsAndWires.
	self assert: [self panel selectedComponents = self panel components].
	
	self panel deselectAllComponents.
	self assert: [self panel selectedComponents isEmpty]