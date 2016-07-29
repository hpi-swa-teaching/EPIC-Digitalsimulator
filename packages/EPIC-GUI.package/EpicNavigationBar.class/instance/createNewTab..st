tab actions
createNewTab: aCircuit
	| tab |
	tab := self tabFor: aCircuit.
	
	self tabs addLast: tab.
	self addMorph: tab inFrontOf: self newTabButton.
	self circuits at: tab put: aCircuit.
	self openCircuit: aCircuit.