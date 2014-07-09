accessing
testCases
	testCases ifNil: [self createTestCases].
	^ testCases