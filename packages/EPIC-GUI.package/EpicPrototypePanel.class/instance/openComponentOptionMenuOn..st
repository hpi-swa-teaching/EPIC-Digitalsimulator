event registration
openComponentOptionMenuOn: aComponent
	| menu |
	menu := MenuMorph new defaultTarget: self.
	aComponent addPrototypeDeleteOption: menu.
	menu invokeModal.