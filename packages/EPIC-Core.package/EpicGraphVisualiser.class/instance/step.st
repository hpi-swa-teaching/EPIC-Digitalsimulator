as yet unclassified
step
	self isSimulating ifTrue: [
		self addInputToGraph.
		self layoutChanged]