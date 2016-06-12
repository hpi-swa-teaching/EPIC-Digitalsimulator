option menu
openWireOptionMenu
	
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self
		addUndoItem: menu;
		addWireItems: menu;
		addDeleteItem: menu.
	menu invokeModal.