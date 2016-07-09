ui creation
createSaveInputPane
	inputPane := (AlignmentMorph new).
	
	inputPane
		layoutPolicy: ProportionalLayout new;
		color: Color transparent;
		
		addMorph: self createSaveFilenameLabel
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.09 @ 1.0));
		addMorph: self createSaveFilenameInput
			fullFrame: (LayoutFrame fractions: (0.11 @ 0 corner: 0.79 @ 1.0));
		addMorph: self createSaveFiletypeInput 
			fullFrame: (LayoutFrame fractions: (0.81 @ 0 corner: 1 @ 1))