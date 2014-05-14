port layout
layoutPorts: aCollectionOfPorts onLineFrom: aPoint to: anotherPoint
	| step |
	step := (anotherPoint - aPoint) / (aCollectionOfPorts size + 1).
	aCollectionOfPorts doWithIndex: [:port :index | 
		port center: (aPoint + (index * step)) rounded
		]