as yet unclassified
initialize
	super initialize.
	self layoutPolicy: TableLayout new;
		beTransparent;
		layoutInset: 10;
		cellInset: 10;
		listCentering: #topLeft;
		cellPositioning: #center;
		listDirection: #leftToRight;
		hResizing: #fillSpace;
		vResizing: #shrinkWrap