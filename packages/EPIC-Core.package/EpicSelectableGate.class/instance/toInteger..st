port conversion
toInteger: aPortCollection
	| portsAsInteger bitValue |
	portsAsInteger := 1.
	bitValue := 1.
	aPortCollection reverseDo: [:aPort | 
		aPort value ifTrue: [
			portsAsInteger := portsAsInteger + bitValue].
		bitValue := bitValue bitShift: 1].
	^ portsAsInteger