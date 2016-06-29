combining
combineSelectedComponentsToNamedCircuit: aCircuitName
	| blackbox userPanel |
	blackbox := self combineSelectedComponents.
	blackbox
		fullyQualifiedName: aCircuitName;
		saveAsSubCircuit.
	userPanel := self mainWindow prototypeBox userPanel.
	userPanel
		removeAllMorphs;
		addComponents: EpicPrototypePanel customComponents
	