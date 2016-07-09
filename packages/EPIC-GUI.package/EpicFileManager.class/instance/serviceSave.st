services
serviceSave
	"Answer a service for hitting the save button"
	
	^(SimpleServiceEntry new
		provider: self label: 'save' selector: #saveHit
		description: 'hit here to save with selected filename and filetype')
		buttonLabel: 'save'