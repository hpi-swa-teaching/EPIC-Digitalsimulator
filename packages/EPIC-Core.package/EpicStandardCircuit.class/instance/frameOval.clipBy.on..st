as yet unclassified
frameOval: aRectangle clipBy: aClipBox on: aCanvas
	aCanvas clipBy: aClipBox during: [ :sameCanvas |
			sameCanvas frameOval: aRectangle color: Color black ]