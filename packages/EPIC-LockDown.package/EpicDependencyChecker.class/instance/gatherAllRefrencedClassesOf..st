class search
gatherAllRefrencedClassesOf: someClasses

	someClasses do: [ :eachClass |
		eachClass methodDict valuesDo: [ :eachCompiledMethod |
			self gatherClassesFromLiterals: eachCompiledMethod]]