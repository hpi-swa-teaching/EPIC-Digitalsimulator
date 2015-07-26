event registration
registerWireEvents
	(self wireHandler)
		on: #mouseEnter send: #highlight:Wire: to: self;
		on: #mouseLeave send: #dehighlight:Wire: to: self;
		on: #startDrag send: #grab:wire: to: self;
		on: #mouseMove send: #mouseMove:onWire: to: self;
		on: #mouseUp send: #drop:wire: to: self;
		on: #mouseDown send: #mouseDown:onWire: to: self