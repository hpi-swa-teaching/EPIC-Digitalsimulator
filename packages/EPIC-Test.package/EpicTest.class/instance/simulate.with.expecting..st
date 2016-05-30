simulation
simulate: aComponent with: aCollectionOfInputValues expecting: aCollectionOfOutputValues
	aComponent simulateWith: aCollectionOfInputValues.
	
	"Because Collection #=  also checks the euality of the used Collection"
	self assert: [
		aComponent outputValues 
			hasEqualElements: aCollectionOfOutputValues asOrderedCollection
	]