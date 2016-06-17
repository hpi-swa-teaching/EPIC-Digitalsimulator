visual properties
fillColor
	self isSelected 
		ifTrue: [^ Color paleBlue darker darker alpha: self class transparency] 
		ifFalse: [^ Color white alpha: self class transparency]