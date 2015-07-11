class search
gatherAllClassesOf: someClasses

	someClasses do: [ :eachClass |
		eachClass class ifNotNil: [
				self addClassIfUnchecked: eachClass class]]