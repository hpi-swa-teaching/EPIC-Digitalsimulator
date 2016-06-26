panel-creation
addConfigurationBox

	self configurationBox: (EpicConfigurationBox new
		layoutFrame: self configurationFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill).