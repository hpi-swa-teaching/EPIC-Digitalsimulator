accessing
rotateUntilFirstIsNearestTo: aPoint
	| newStart |
	newStart := self vertices detectMin: [:eachPoint | eachPoint dist: aPoint].	
	self vertices: 
		(((self vertices copyAfter: newStart), 
		(self vertices copyUpTo: newStart)) 
			copyWithFirst: newStart)
	
