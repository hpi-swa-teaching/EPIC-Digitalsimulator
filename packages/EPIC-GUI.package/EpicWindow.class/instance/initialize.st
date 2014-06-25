initialization
initialize
	super initialize.
	"self setLabel: 'EPIC: Program for Integrated Circuits'"
	self extent: 600@300.
	
	self layoutPolicy: ProportionalLayout new.
		"listDirection: #topToBottom;
		wrapCentering: #topLeft;
		wrapDirection: #leftToRight;
		hResizing: #rigid;
		vResizing: #rigid;
		layoutInset: 0;
		cellInset: 0;
		rubberBandCells: true."
	self postOpenInitialize.