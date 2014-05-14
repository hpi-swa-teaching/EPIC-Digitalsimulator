instance creation
instanceFor: aMorph
	^ self lazyInstanceDict 
		at: aMorph 
		ifAbsent: [ self instanceFor: aMorph owner ]