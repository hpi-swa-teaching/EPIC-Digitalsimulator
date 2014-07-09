context menu
showContextMenu: anEvent ForPort: aPort
	| menu |
	menu := MenuMorph new.
	menu position: anEvent hand position.
	menu add: 'Observe with Oscilloscope'
		target: self oscilloscope selector: #addPort: argument: aPort.
	menu openInWorld.
