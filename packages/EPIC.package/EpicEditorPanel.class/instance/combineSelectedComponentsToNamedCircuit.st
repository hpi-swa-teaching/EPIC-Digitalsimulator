combining
combineSelectedComponentsToNamedCircuit
	"Benannte Schaltkreise werden im Paketsystem gespeichert. Dies ist das Standard-
	verhalten, wenn mehrere Komponenten über die GUI kombiniert werden."
	(self selectedComponents size < 2) 
		ifTrue: [^self].
	(EpicCircuitNamingDialog 
		getCircuitNameWithTitle: 'Collapsed circuit name' 
		label: 'Enter circuit name')
			ifNotNilDo: [:name | self combineSelectedComponentsToNamedCircuit: name]
	