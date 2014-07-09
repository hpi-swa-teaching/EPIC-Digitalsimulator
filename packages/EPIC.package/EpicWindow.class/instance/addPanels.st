initialization
addPanels 
	self
		addEditorBox;
		addPrototypeBox;
		addOscilloscopeBox;
		connectPanels.
	self editorPanel oscilloscope: self oscilloscopeBox.
	self editorPanel setTestLight.