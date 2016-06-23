naming
labelName
	self customLabelName ifNotNil: [^ self customLabelName].
	^ self componentName