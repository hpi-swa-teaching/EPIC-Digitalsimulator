panel creation
createPrototypeBox
	^ EpicPrototypeBox new
		layoutFrame: self prototypeFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself
		