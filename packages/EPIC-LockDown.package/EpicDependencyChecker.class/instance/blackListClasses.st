as yet unclassified
blackListClasses

	^ self allClasses select: [ :eachClass |
		self blackListPackages includes: eachClass category]