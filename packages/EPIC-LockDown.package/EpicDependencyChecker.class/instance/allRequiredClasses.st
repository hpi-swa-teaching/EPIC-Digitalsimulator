as yet unclassified
allRequiredClasses

	self uncheckedClasses addAll: self allEpicClasses.
	self checkClassesUntilDone.
	^ self checkedClasses