services
serviceOpen
	"Answer a service for hitting the save button"
	
	^(SimpleServiceEntry new
		provider: self label: 'open' selector: #openHit
		description: 'hit here to open the selected file')
		buttonLabel: 'open'