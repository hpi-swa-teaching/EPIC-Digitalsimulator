selection
sortWiresByEndPoints
"sortiert die Kabel nach höhe ihres Endpunktes"
	self endWires: (self wires sorted: [ :a :b|
		(a endPoint y) <= (b endPoint y)])