writing xml
endEmptyTag: tagName
	self popTag: tagName.
	self stream nextPutAll: '/>'.
	self stream cr.
	self writeIndent