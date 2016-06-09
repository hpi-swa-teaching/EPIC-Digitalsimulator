option menu
openBackgroundOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self addMenuTitle: menu.
	self addUndoItem: menu.
	self addCopyPasteItem: menu.
	menu invokeModal.
	