tab actions
createNewTab
	self editorPanel 
		newCircuit;
		openCircuitAt: self tabs size - 1.
	self updateNavigationBar.