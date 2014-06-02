running
createXmlFile
	"Erstellt file, das notwendig ist, damit die Tests auch beim ersten ausführen durchlaufen"
	| relativeDirectory |
	relativeDirectory := EPIC translateCircuitNameToFileName: self temporaryCircuitName.
.	
	(FileDirectory default / (relativeDirectory copyUpToLast: FileDirectory slash asCharacter))
		assureExistence.

	FileDirectory default forceNewFileNamed: relativeDirectory do: [:stream |
	stream nextPutAll: self xmlFileContent]