input/output
open
	|filename|
	filename:= EpicFileBrowser getOpenFilePath.
	
	filename ifNotNil:[
		self openFileNamed: filename fullName ]