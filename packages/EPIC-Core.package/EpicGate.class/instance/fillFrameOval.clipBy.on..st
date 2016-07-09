as yet unclassified
fillFrameOval: aRectangle clipBy: aClipBox on: aCanvas
	aCanvas clipBy: aClipBox during: [ :sameCanvas |
			sameCanvas fillOval: aRectangle color: self fillColor borderWidth: 1 borderColor: Color black ]