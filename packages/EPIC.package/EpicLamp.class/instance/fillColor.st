visual properties
fillColor
	^ ( self isPowered 
		ifTrue: [Color yellow] 
		ifFalse: [Color white] )
			alphaMixed: 0.5 with: super fillColor.