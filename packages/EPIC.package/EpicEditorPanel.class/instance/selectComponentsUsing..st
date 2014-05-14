selection
selectComponentsUsing: aSelector
	self selectComponents: (aSelector createSelection: self componentsAndWires)