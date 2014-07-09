context menu
showContextMenu: anEvent ForComponent: aComponent
	| menu |
	aComponent isCircuit ifTrue: [
		menu := MenuMorph new.
		menu position: anEvent hand position.
		menu add: 'Set number of ports'
			target: self selector: #changePortCountFor: argument: aComponent.
		menu openInWorld.
		]