menu creation
runComponentTestCases
	(self circuits last testCases isEmpty) ifTrue: [^ self inform: 'No testCases found. Please make sure your current circuit has input and outputPorts and run set TestCases'].

	self testAgent isIdle ifFalse: [ ^self inform: 'Tests already running. Please wait until previous tests finish.'].

	self testLight active: true.
	
	self testAgent startConcurrent: [ self testLight passed: (self circuits last runTestCases: self testLight progress). self testLight progress value contents: 0.0 ]
