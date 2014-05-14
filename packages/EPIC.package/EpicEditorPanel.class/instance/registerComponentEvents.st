event registration
registerComponentEvents
	(self componentHandler)
		on: #doubleClick send: #doubleClick:onComponent: to: self;
		on: #mouseDown send: #mouseDown:onComponent: to: self;
		on: #mouseMove send: #mouseMove:onComponent: to: self;
		on: #mouseUp send: #mouseUp:onComponent: to: self
