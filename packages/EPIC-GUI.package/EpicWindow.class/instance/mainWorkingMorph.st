initialization
mainWorkingMorph

	^AlignmentMorph newRow
		color: Color gray;
		layoutFrame: self mainWorkingFrame;
		addMorph: self editorBox;
		addMorph: self prototypeBox;
		layoutPolicy: ProportionalLayout new.