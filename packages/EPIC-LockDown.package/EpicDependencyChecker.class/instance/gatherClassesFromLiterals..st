class search
gatherClassesFromLiterals: aCompiledMethod

	aCompiledMethod literals do: [ :eachLiteral |
		(eachLiteral class name = #ClassBinding) ifTrue: [
			self addClassIfUnchecked: eachLiteral value]]