visual properties
updatePositionOf: aCircuit by: aDelta
	aCircuit moveSubcomponentsBy: aDelta;
		innerOrigin: aCircuit innerOrigin + aDelta