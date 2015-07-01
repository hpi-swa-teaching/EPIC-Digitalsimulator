drawing
addWires: aWireList
	|newWires|

	newWires := self wires copy.
	newWires addAll: aWireList.
	
	self startWires: (newWires sorted: [ :a :b|
		(a startPoint y) <= (b startPoint y) ]).
	self endWires: (newWires sorted: [ :a :b|
		(a endPoint y) <= (b endPoint y) ]).
	
	self reorderExistingWiresFor: newWires size.
	self orderNewWires: aWireList for: newWires size.
	
	self wires: newWires.
	self deselect