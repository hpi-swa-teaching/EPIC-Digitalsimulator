running
createXmlFile
	"Erstellt file, das notwendig ist, damit die Tests auch beim ersten ausführen durchlaufen"
	| fileName |
	fileName := 'epic\epic\test\test.xml'.
	(FileDirectory default directoryNamed: (FileDirectory dirPathFor: fileName))
		assureExistence.
	(FileStream forceNewFileNamed: fileName)
		print: self xmlFileContent;
		close.