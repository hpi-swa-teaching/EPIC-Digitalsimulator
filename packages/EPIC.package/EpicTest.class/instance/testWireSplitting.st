component testing
testWireSplitting
	| firstNot secondNot wire anchorPoints |
		
	firstNot := EpicNot new.
	secondNot := EpicNot new.

	wire :=	EpicWire from: firstNot outputPorts first to: secondNot inputPorts first.
		
	4 timesRepeat: [wire addAnchorPoint: (500 atRandom )@(500 atRandom)].
	anchorPoints := (wire splitAt: (wire anchorPoints third)) first.
	anchorPoints addAll: ((wire splitAt: (wire anchorPoints third)) second).
	 self assert: [ anchorPoints = wire anchorPoints].
	

	
	