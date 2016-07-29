tab actions
createNewTab
	| circuit tab |
	circuit := self editorPanel newCircuit.
	tab := self tabFor: circuit.
	
	self tabs addLast: tab.
	self addMorph: tab inFrontOf: self newTabButton.
	self circuits at: tab put: circuit.
	self openCircuit: circuit.