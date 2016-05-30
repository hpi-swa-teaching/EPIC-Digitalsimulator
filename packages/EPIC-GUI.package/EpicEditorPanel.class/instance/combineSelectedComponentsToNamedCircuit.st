combining
combineSelectedComponentsToNamedCircuit
	"Named circuits are saved in a package system. This is standard behaviour when several components are combined by using the GUI."
	(self selectedComponents size < 2) 
		ifTrue: [^self].
	(EpicCircuitNamingDialog 
		getCircuitNameWithTitle: 'Collapsed circuit name' 
		label: 'Enter circuit name')
			ifNotNilDo: [:name | self combineSelectedComponentsToNamedCircuit: name]
	