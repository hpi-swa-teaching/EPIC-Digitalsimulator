initialization
addOscilloscopeBox
	self oscilloscopeBox: self createOscilloscopeBox;
		addMorph: self oscilloscopeBox fullFrame: self oscilloscopeFrame.
	self oscilloscopeBox window: self