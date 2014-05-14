input/output
open
	|filename|
	filename:= EpicFileBrowser getCircuitFileName.
	filename ifNotNil:[
		self openFileNamed: filename 
	]