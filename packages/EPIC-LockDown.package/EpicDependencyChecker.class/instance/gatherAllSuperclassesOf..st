as yet unclassified
gatherAllSuperclassesOf: someClasses

	someClasses do: [ :eachClass |
		eachClass superclass ifNotNil: [
				self addClassIfUnchecked: eachClass superclass]]