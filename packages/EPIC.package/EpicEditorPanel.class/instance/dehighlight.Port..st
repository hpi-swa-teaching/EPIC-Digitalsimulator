visual properties
dehighlight: anEvent Port: aPort
	(aPort component bounds containsPoint: anEvent hand position) 
		ifTrue: [ anEvent hand showTemporaryCursor: Cursor webLink. ]
		ifFalse: [ anEvent hand showTemporaryCursor: Cursor normal ].