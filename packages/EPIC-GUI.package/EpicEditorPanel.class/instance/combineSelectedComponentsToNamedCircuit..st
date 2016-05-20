combining
combineSelectedComponentsToNamedCircuit: aCircuitName
	| blackbox |
	blackbox := self combineSelectedComponents.
	blackbox
		fullyQualifiedName: aCircuitName;
		saveAsSubCircuit
	