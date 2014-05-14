deletion
delete
	self simulator ifNotNilDo: [ :simulator | simulator stopSimulation ].
	self editorPanel ifNotNilDo: [ :editorPanel | editorPanel delete ].
	self prototypeBox ifNotNilDo: [ :prototypeBox | prototypeBox delete ].
	EpicConfiguration unregisterInstance: self.
	super delete