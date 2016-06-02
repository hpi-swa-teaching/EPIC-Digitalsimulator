accessing
svgFontFamilyNameFor: aFont

	aFont familyName = 'Bitmap DejaVu Sans'
		ifTrue: [ ^ 'DejaVu Sans' ]
		ifFalse: [ ^ aFont familyName ]