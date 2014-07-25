panel creation
addPrototypeBox

	self prototypeBox: (EpicPrototypeBox new
		layoutFrame: self prototypeFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill).
		