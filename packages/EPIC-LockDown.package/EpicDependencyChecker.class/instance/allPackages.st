as yet unclassified
allPackages

	| packages |
	packages := Set new.
	self allClasses do: [ :eachClass |
		packages add: eachClass category].
	^ packages