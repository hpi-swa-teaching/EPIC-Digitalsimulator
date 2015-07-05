as yet unclassified
workOffUncheckedClasses

	| currentClasses |
	currentClasses := self uncheckedClasses.
	self checkedClasses addAll: currentClasses.
	self uncheckedClasses: Set new.
	self gatherAllSuperclassesOf: currentClasses.
	self gatherAllRefrencedClassesOf: currentClasses.