input/output
export
	| types |
	types := Dictionary new.
	
	types add: 'jpeg'->#exportAsJPEG:; add: 'png'->#exportAsPNG:;
		add: 'svg'->#exportAsSVG:; add: 'ps'->#exportAsPS:.
	EpicFileManager saveFileFor: self with: types.