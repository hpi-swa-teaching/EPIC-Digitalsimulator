event registration
registerForEvents 
	self componentHandler
		on: #startDrag send: #startDrag:onComponent: to: self