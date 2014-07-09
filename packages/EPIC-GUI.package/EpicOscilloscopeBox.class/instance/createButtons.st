initialization
createButtons
	| pathDelimiter |
	pathDelimiter := FileDirectory new pathNameDelimiter.
	
	self startButton: (ImageMorph new newForm: (Form fromFileNamed: 'epic',pathDelimiter,'resources',pathDelimiter,'glyphicons_173_play.png')).
	self stopButton: (ImageMorph new newForm: (Form fromFileNamed: 'epic',pathDelimiter,'resources',pathDelimiter,'glyphicons_174_pause.png')).
	self startButton eventHandler: self buttonHandler.
	self stopButton eventHandler: self buttonHandler.
	self addMorph: self startButton fullFrame: self buttonFrame.
	self addMorph: self stopButton fullFrame: (self buttonFrame topOffset: 30).