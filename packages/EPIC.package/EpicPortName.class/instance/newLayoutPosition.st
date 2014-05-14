geometry
newLayoutPosition
	^ self port isInput 
		ifTrue: [ self port left - (self width + self class margin) ]
		ifFalse: [ self port right + self class margin ]