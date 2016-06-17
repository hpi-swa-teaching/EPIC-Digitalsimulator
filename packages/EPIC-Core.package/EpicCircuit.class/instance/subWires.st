accessing
subWires
	| wireList bundleList |
	
	wireList := (self subComponents gather: [:eachComponent | 
		eachComponent connectedWires
	]) asOrderedCollection distinct.
	
	bundleList := (wireList gather: [ :wire| 
		wire includingBundles
	]) asOrderedCollection distinct.

	^ wireList, bundleList