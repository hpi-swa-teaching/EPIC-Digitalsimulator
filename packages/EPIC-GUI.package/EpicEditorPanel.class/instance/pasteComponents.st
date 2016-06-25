copy/paste
pasteComponents
	| blackbox |
	self deselectAllComponents.	
	blackbox:= self parseCircuitFrom: 
		(XMLDOMParser parseDocumentFrom: (Clipboard clipboardText readStream)).
	self updatePositionOf: blackbox.
	self updatePositionOf: blackbox by: self grid gridSize.
	self addInternalsOfCircuit: blackbox.
	self 
		selectComponents: (blackbox subComponents, blackbox subWires);
		copySelectedComponents
	
	