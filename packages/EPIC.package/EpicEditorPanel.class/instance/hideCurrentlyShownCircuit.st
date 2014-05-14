circuit stacking
hideCurrentlyShownCircuit
	self submorphs allButLast copy do: [:morph | 
		self removeMorph: morph. 
		morph removeActionsWithReceiver: self forEvent: #deleted
	]