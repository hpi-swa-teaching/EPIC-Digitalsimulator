as yet unclassified
allEpicClassesWithoutTests

	^ self allEpicClasses select: [ :eachClass |
		eachClass category ~= #'EPIC-Test']
