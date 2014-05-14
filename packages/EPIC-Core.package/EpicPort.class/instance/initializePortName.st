initialization
initializePortName
	self 
		portName: (EpicPortName withCaption: '' for: self);
		addMorph: self portName
		