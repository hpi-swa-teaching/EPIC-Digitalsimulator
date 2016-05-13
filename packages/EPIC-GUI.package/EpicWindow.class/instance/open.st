input/output
open
	|filename|
	filename:= EpicFileManager getOpenFilePath.
	filename ifNotNil:[
		self openFileNamed: filename 
	]