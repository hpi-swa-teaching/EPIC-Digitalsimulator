class search
allEpicClassesWithoutTests

	^ self allEpicClasses select: [ :eachClass |
		eachClass category ~= #'EPIC-Test']
