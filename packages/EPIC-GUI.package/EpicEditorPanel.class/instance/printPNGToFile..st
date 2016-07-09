output
printPNGToFile: aFileStream
	PNGReadWriter
		putForm: self imageForm
		onStream: aFileStream