port layout
layoutPorts: aCollectionOfPorts onLineFrom: aPoint to: anotherPoint
	aCollectionOfPorts do: [ :each | each center: self center]
