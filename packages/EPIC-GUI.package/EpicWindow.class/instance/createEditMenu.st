menu creation
createEditMenu
	^ (EpicMenu new)
		add: 'Copy'
			target: self editorPanel
			selector: #copySelectedComponents;
		add: 'Cut'
			target: self editorPanel
			selector: #cutSelectedComponents;
		add: 'Paste'
			target: self editorPanel
			selector: #pasteComponents;
		add: 'Combine selected components'
			target: self editorPanel
			selector: #combineSelectedComponentsToNamedCircuit;
		add: 'Bundle selected wires'
			target: self editorPanel
			selector: #bundleSelectedWires;
		add: 'Unbundle selected bundle'
			target: self editorPanel 
			selector: #unbundleSelectedWires;
		yourself