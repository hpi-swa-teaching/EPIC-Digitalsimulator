selection
sortWiresByStartPoints
"sortiert die Kabel nach höhe ihres Anfangspunktes"
	self startWires: (self wires sorted: [ :a :b|
		(a startPoint y) <= (b startPoint y)])