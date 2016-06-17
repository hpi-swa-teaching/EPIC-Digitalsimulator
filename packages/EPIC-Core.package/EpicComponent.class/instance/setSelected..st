selection
setSelected: aBoolean
	(aBoolean = self isSelected) ifFalse: [
		self 
			selected: aBoolean;
			changed
	]