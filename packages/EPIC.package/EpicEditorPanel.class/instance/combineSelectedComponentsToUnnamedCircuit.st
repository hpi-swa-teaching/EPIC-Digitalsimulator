combining
combineSelectedComponentsToUnnamedCircuit
	"Unbenannte Schaltkreise werden nicht abgespeichert. Wird von den Tests
	 verwendet."
	(self selectedComponents size < 2)
		ifTrue: [^self].
	self combineSelectedComponents
	