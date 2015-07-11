class search
addClassIfUnchecked: aClass

	(self checkedClasses includes: aClass) ifFalse: [
		self uncheckedClasses add: aClass]