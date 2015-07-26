entry activation
deactivateEntries: aCollectionOfIndices

	self items withIndexDo: [:eachItem :eachIndex |
			(aCollectionOfIndices includes: eachIndex) ifTrue: [ eachItem 
					isEnabled: false;
					changed]]