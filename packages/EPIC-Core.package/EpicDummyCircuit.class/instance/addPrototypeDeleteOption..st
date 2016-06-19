as yet unclassified
addPrototypeDeleteOption: aMenu
	aMenu add: 'delete' translated action:
		[self deleteXmlFile.
		self delete]