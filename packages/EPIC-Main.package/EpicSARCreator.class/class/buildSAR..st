SAR creation
buildSAR: aFileName
	"Exportiert die aktuelle Arbeitskopie des Pakets in eine SAR-Datei. Zum Teil 
	Copy-Paste von http://wiki.squeak.org/squeak/3324"
	| stream |
	stream := RWBinaryOrTextStream 
		on: (String new: 10000).
	self 
		write: (MCPackage named: 'EPIC')
		to: stream;
		buildSAR: aFileName
		from: stream