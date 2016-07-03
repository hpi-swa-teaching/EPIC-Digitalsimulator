drawing
drawOn: aCanvas
	| componentStyle |
	componentStyle := (EpicConfiguration instanceFor: self) componentStyle.
	(componentStyle = #epic)
		ifTrue: [ self drawAsEPICOn: aCanvas. ^self ].
	(componentStyle = #iec)
		ifTrue: [ self drawAsIECOn: aCanvas. ^self ].
	(componentStyle = #ansi)
		ifTrue: [ self drawAsANSIOn: aCanvas. ^self ].
	(componentStyle = #din)
		ifTrue: [ self drawAsDINOn: aCanvas. ^self ].
		