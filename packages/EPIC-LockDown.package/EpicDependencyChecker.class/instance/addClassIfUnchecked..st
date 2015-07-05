as yet unclassified
addClassIfUnchecked: aClass

	(self checkedClasses includes: aClass) ifFalse: [
		self uncheckedClasses add: aClass]