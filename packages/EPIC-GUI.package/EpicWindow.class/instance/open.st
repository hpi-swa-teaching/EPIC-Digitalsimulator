input/output
open
	| types |
	types := Dictionary new.
	types add: 'xml' -> #open:.
	EpicFileManager openFileFor: self with: types.