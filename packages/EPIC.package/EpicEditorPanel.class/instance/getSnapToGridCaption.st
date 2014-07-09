menu creation
getSnapToGridCaption
	^ self snapToGrid  
		ifTrue:
			['disable snapToGrid' translated]
		ifFalse:
			['enable snapToGrid' translated]