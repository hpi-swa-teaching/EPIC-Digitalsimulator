accessing
rootTopic: aHelpTopic

	rootTopic := aHelpTopic asHelpTopic.
	
	self toplevelTopics: ((self rootTopic ifNil: [#()] ifNotNil: #subtopics), {self searchTopic}).
	self changed: #label.
