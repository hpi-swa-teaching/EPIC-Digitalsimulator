selection
centerOfComponents: aCollectionOfComponents
	aCollectionOfComponents ifEmpty: [^0@0].
	^ (Rectangle merging:
		(aCollectionOfComponents collect: [:eachComponent|  eachComponent bounds])) 
		center