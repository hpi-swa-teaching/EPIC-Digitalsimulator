option menu
openWireOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self addDeleteItem: menu.
	menu invokeModal.