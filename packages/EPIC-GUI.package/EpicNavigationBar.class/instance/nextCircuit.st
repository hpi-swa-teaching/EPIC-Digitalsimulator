tab actions
nextCircuit
	self tabs isEmpty 
	ifTrue: [ self editorPanel hideCurrentlyShownCircuit ]
	ifFalse: [ self openCircuit: (self circuits at: self tabs last) ]
	
	
	