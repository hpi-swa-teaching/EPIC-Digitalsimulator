event registration
registerBackgroundEvents
	self
		on: #click send: #clickOnBackground: to: self;
		on: #mouseMove send: #resizeSelector: to: self;
		on: #mouseUp send: #mouseUpOnBackground: to: self;
		on: #mouseDown send: #mouseDownOnBackground: to: self;
		on: #startDrag send: #startDragOnBackground: to: self;
		on: #keyStroke send: #keyPressed: to: self