simulation
simulate: aComponent with: aCollectionOfInputValues expecting: aCollectionOfOutputValues
	aComponent simulateWith: aCollectionOfInputValues.
	
	"Weil Collection #= auch auf Gleichheit der verwendeten Collection prüft"
	self assert: [
		aComponent outputValues 
			hasEqualElements: aCollectionOfOutputValues asOrderedCollection
	]