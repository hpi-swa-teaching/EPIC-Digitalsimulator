component testing
runTestCases: aProgress
	
	self runTestCasesOnSelf: aProgress. 
	self testCases do: [ :eachCase | eachCase third ifFalse: [^false]].	
	^true