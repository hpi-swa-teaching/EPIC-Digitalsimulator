running
createXmlFile
	"Creates file that ensures that the tests also work in the first execution."
	| directory | 
	directory := self temporaryCircuitFile containingDirectory.
	
	directory assureExistence.
	directory forceNewFileNamed: self temporaryCircuitFile name do: [:stream |
	stream nextPutAll: self xmlFileContent]