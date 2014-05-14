SAR creation
buildSAR: aFileName from: aStream
	| zip |
	zip := ZipArchive new.
	zip 
		addString: 'self fileInMonticelloZipVersionNamed: ''EPIC.mcz''' 
		as: 'install/preamble'.
	"Den Stream (also das tatsächliche Paket) im SAR ablegen."
	zip addString: aStream contents as: 'EPIC.mcz'.
	zip writeToFileNamed: aFileName