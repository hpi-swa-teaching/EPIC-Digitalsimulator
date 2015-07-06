as yet unclassified
allRequiredClasses

	self uncheckedClasses 
		addAll: self allEpicClassesWithoutTests;
		addAll: self blackListClasses.
	self checkClassesUntilDone.
	^ self checkedClasses