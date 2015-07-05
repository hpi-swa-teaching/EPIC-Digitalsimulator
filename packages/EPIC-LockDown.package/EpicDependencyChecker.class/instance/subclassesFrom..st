as yet unclassified
subclassesFrom: aClass

	| classes |
	classes := OrderedCollection new.
	classes addAll: aClass subclasses.
	aClass subclasses do: [ :eachSubclass |
		classes addAll: (self subclassesFrom: eachSubclass)].
	^ classes