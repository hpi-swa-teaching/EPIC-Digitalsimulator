services
serviceSave
	"Answer a service for hitting the save button"

	^(SimpleServiceEntry new
		provider: self label: 'save' selector: #okHit
		description: 'hit here to save with selected filename')
		buttonLabel: 'save'