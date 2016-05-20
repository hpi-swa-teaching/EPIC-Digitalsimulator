running
createXmlFile
	"Erstellt file, das notwendig ist, damit die Tests auch beim ersten ausführen durchlaufen"
	| directory | 
	directory := self temporaryCircuitFile containingDirectory.
	
	directory assureExistence.
	directory forceNewFileNamed: self temporaryCircuitFile name do: [:stream |
	stream nextPutAll: self xmlFileContent]