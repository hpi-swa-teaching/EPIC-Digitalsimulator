writing xml
startElement: elementName attributeList: attributeList
	self startTag: elementName.
	attributeList keys asArray sort do: [:key |
		self attribute: key value: (attributeList at: key)
	]