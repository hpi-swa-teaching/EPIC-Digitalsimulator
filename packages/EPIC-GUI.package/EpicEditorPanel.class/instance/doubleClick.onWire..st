event handling
doubleClick: anEvent onWire: aWire
	| junction  |
	
	junction := EpicJunction new.
	self split: aWire at: junction on: anEvent position.
	 	
	junction center: anEvent position.
	self addComponent: junction.