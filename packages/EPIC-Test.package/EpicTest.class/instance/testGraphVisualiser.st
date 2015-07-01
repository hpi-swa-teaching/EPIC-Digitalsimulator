component testing
testGraphVisualiser
	| component pointCount testArray |
	
	self simulate: EpicGraphVisualiser new with: #(true) expecting: true.
	self simulate: EpicGraphVisualiser new with: #(false) expecting: false.
	
	component := EpicGraphVisualiser new.
	pointCount := component class pointAmount.
	testArray := OrderedCollection new.
	1 to: pointCount do: [:i | testArray addLast: false].

	component inputPorts first setValue: true.
	component addInputToGraph.
	testArray at: pointCount put: true.
	self assert: (component graph = testArray).

	component inputPorts first setValue: false.
	component addInputToGraph.
	component addInputToGraph.
	component addInputToGraph.
	
	testArray at: pointCount put: false.
	testArray at: pointCount - 3 put: true.
	self assert: (component graph = testArray)