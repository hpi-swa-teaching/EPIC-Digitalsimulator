tab actions
removeCircuit: aCircuit
	| tab |
	tab := self circuits keyAtValue: aCircuit.

	self circuits removeKey: tab.
	self tabs remove: tab.
	self removeMorph: tab.
	
	self nextCircuit.