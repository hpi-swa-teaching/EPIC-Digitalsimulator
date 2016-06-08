output
printPSToFileNamed: aString 
	"Ask the user for a filename and print this morph as postscript."
	| rotateFlag psCanvasType psExtension |
	psCanvasType := PostscriptCanvas defaultCanvasType.
	psExtension := psCanvasType defaultExtension.
	rotateFlag := (UIManager default chooseFrom: {
		'portrait (tall)' translated.
		'landscape (wide)' translated.
	} title: 'Choose orientation...' translated) = 2.
	((FileStream newFileNamed: aString) converter: TextConverter defaultSystemConverter)
		nextPutAll: (psCanvasType morphAsPostscript: self rotated: rotateFlag);
		 close