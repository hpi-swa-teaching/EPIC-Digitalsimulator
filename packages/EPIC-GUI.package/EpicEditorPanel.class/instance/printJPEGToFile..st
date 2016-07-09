output
printJPEGToFile: aFileStream
	JPEGReadWriter2
		putForm: self imageForm
		onStream: aFileStream