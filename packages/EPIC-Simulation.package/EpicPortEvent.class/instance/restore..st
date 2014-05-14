simulation
restore: aCollectionOfValues
	^ aCollectionOfValues 
		at: self portIndex
		put: self value;
		yourself