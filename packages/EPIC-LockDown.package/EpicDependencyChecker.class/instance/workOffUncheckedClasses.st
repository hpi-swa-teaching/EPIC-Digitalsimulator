automation
workOffUncheckedClasses

	| currentClasses |
	currentClasses := self uncheckedClasses.
	self checkedClasses addAll: currentClasses.
	self uncheckedClasses: Set new.
	self gatherAllSuperclassesOf: currentClasses.
	self gatherAllClassesOf: currentClasses.
	self gatherAllRefrencedClassesOf: currentClasses.