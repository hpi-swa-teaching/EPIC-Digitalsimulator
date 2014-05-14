helper messages
containsComponentOfType: aString
	^ self editorPanel components contains: [ :eachComponent | 
		eachComponent fullyQualifiedName = aString
			and: [eachComponent owner = self editorPanel]
	]