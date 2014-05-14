tab manipulation
calculatePositionForNewTab
	^ self tabs 
		ifEmpty: [ self class firstTabPosition ]
		ifNotEmpty: [ self tabs last adjustLayoutBounds. 
			self tabs last topRight + self class tabSpacing ]