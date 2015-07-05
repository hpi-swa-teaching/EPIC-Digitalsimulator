connecting
connectTo: aPort on: anEditorPanel

	| addWireCommand |
	addWireCommand := EpicAddWireCommand newFor: anEditorPanel.
	addWireCommand 
		startPort: self startPort;
		endPort: aPort;
		anchorPoints: self anchorPoints.
	anEditorPanel handleOutsideCommand: addWireCommand.
	^ addWireCommand wire