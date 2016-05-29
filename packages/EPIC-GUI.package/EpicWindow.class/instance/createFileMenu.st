menu creation
createFileMenu
	^ (EpicMenu new)
		add: 'New'
			target: self editorPanel
			selector: #clear;
		addLine;
		add: 'Open...'
			target: self 
			selector: #open;
		add: 'Save as...'
			target: self
			selector: #saveAs;
		addLine;
		add: 'Export as png...'
			target: self
			selector: #exportAsPng;
		add: 'Export as ps...'
			target: self
			selector: #exportAsPs;
		addLine;
		add: 'Close'
			target: self
			selector: #delete;
		yourself