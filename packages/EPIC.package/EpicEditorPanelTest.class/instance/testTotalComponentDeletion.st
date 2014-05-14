deletion testing
testTotalComponentDeletion
	self panel selectAllComponentsAndWires.
	self panel deleteSelectedComponents.
	
	self assert: [self panel components isEmpty].