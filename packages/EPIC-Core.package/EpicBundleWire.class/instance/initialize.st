initialization
initialize
	super initialize.
	self
		wires: OrderedCollection new;
		addAnchorPoint: 0@0;
		addAnchorPoint: 0@0;
		generateDrawAnchors;
		wireColor;
		lineWidth: self class wireThickness