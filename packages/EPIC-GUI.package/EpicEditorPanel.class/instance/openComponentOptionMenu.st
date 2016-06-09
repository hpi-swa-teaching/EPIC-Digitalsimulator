option menu
openComponentOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self addDeleteItem: menu.
	self addCopyPasteItem: menu.
	menu invokeModal.