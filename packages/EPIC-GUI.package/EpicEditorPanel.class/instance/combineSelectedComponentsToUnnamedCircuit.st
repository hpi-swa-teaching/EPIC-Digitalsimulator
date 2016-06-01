combining
combineSelectedComponentsToUnnamedCircuit
	"Unnamed circuits are not saved. This is used by tests."

	(self selectedComponents size < 2)
		ifTrue: [^self].
	self combineSelectedComponents
	