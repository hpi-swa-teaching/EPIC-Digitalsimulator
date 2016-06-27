accessing
createConfigurationPanel
	self configurationPanel: Morph new.
	self configurationPanel
		layoutPolicy: TableLayout new;
		beTransparent;
		layoutInset: 0;
		cellInset: 0;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		listDirection: #topToBottom;
		hResizing: #fillSpace;
		vResizing: #fillSpace