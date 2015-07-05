as yet unclassified
epicSubclassesFrom: aClass
	
	| epicClasses |
	epicClasses := OrderedCollection new.
	epicClasses addAll: (aClass subclasses select: [ :eachSubclass |
		eachSubclass name beginsWith: #Epic]).
	aClass subclasses do: [ :eachSubclass |
		epicClasses addAll: (self epicSubclassesFrom: eachSubclass)].
	^ epicClasses