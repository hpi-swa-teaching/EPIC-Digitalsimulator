initialization
mainWorkingMorph

	^AlignmentMorph newRow
		layoutFrame: self mainWorkingFrame;
		addMorph: self editorBox;
		addMorph: self prototypeBox;
		layoutPolicy: ProportionalLayout new.