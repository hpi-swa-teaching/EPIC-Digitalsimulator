option menu
addMenuItems: aMenu
	aMenu
		add: 'undo' translated action: [ self commandExecutor undoLastCommand ];
		add: 'Help On...' translated action: #openHelpOnSelectedComponents;
		addLine;
		add: 'copy' translated action: #copySelectedComponents;
		add: 'cut' translated action: #cutSelectedComponents;
		add: 'paste' translated action: #pasteComponents;
		addLine;
		add: 'combine components...' translated action: #combineSelectedComponentsToNamedCircuit;
		add: 'bundle wires...' translated action: #bundleSelectedWires;
		add: 'unbundle wires...' translated action: #unbundleSelectedWires;
		addLine;
		add: 'delete' translated action: #deleteSelectedComponents
	