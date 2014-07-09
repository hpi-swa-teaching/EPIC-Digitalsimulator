initialization
initialize 
	super initialize.
	self extent: 40@82;
		borderWidth: 5;
		borderColor: Color red;
		passed: false;
		active: false;
		progress: ProgressBarMorph new;
		addMorph: self progress.
		
		self progress position: self position + (2 @ 78);
			extent: 36@2;
			color: Color darkGray;
			progressColor: (Color r: 0.43 g: 0.67 b: 0.72) "6FACB9";
			borderWidth: 0.
	