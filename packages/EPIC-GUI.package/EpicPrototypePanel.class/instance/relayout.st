layout
relayout
	| lastTop newTop left smallBounds|
		smallBounds := self bounds insetBy: self class margin.
	newTop := smallBounds top.
	lastTop := smallBounds top.
	left := smallBounds left.
	self submorphsDo:
		[:eachComponent | 
		((left + eachComponent fullBounds width) > (smallBounds right)) 
			ifTrue: [left := smallBounds left. lastTop := newTop].
		
		eachComponent position: left @ lastTop.
		
		left := eachComponent fullBounds right + self class margin.
		newTop := newTop max: (eachComponent bottom + self class margin + self class verticalMargin)		
		].
	self width: self class panelWidth.
	self height: newTop