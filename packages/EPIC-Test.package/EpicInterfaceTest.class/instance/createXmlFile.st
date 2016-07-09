running
createXmlFile
	"Creates file that ensures that the tests also work in the first execution."
	(FileStream forceNewFileNamed: self temporaryCircuitFilePath)
		nextPutAll: self xmlFileContent