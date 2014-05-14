writing xml
endTag
	self stream nextPutAll: '>'.
	self stream cr.
	self indent