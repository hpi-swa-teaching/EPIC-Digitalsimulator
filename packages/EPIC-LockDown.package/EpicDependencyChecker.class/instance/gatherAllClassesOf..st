as yet unclassified
gatherAllClassesOf: someClasses

	someClasses do: [ :eachClass |
		eachClass class ifNotNil: [
				self addClassIfUnchecked: eachClass class]]