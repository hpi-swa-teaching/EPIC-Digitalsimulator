stepping and presenter
step
	self isSimulating ifTrue: [
		self addInputToGraph.
		self layoutChanged]