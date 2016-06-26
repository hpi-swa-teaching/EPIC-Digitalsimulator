ui creation
createInputPane
	inputPane := AlignmentMorph new.
	inputPane
		layoutPolicy: ProportionalLayout new;
		color: Color transparent.
		
	inputPane addMorph: self createFileNameLabel
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.09 @ 1.0)
			offsets: (0 @ 0 corner: 0 @ 0)).
	inputPane addMorph: self createFileNameInput
		fullFrame: (LayoutFrame fractions: (0.11 @ 0 corner: 1.0 @ 1.0)
			offsets: (0 @ 0 corner: 0 @ 0)).