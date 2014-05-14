accessing
addArc: aBoundRectangle
	1 to: self class steps do: [:index | 
		self addArcPoint: aBoundRectangle atAngle: index / self class steps * Float twoPi
	]