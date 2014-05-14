selection
setSelected: aBoolean
	(aBoolean = self isSelected) ifFalse: [
		aBoolean
			ifTrue: [ self increaseLineWidth ]
			ifFalse: [ self decreaseLineWidth ].
		self 
			selected: aBoolean;
			changed
	]