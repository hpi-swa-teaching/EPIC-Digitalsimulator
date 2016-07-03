combining
reconnect: aWire withIntermediate: anEndPort and: aStartPort
	| startPort  endPort |
	startPort := aWire startPort.
	endPort := aWire endPort.
	aWire delete.
	
	anEndPort acceptsWire ifTrue: [EpicWire from: startPort to: anEndPort].
	endPort acceptsWire ifTrue: [EpicWire from: aStartPort to: endPort]