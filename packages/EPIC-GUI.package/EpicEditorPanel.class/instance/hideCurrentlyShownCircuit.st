circuit tabbing
hideCurrentlyShownCircuit
	(self submorphs notEmpty)
	ifTrue: [
	self submorphs allButLast copy do: [:morph | 
		self removeMorph: morph. 
		morph removeActionsWithReceiver: self forEvent: #deleted ] ]