geometry
resizeOscilloscope: anOffset
	self editorBox layoutFrame bottomOffset: anOffset - 4.
	self prototypeBox layoutFrame bottomOffset: anOffset - 4. 
	self oscilloscopeBox layoutFrame topOffset: anOffset + 4.
	
	self layoutChanged