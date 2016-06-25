option menu
addWireItemTo: aMenu
	aMenu
		addLine;
		add: 'bundle wires...' translated action: #bundleSelectedWires;
		add: 'unbundle wires...' translated action: #unbundleSelectedWires