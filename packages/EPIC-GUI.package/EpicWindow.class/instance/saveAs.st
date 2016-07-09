input/output
saveAs
	| types |
	types := Dictionary new.
	types add: 'xml' -> #saveAs:.
	EpicFileManager saveFileFor: self with: types