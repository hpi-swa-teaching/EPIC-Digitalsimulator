as yet unclassified
toInteger: aPortCollection
	| portsAsString portsAsInteger |
	portsAsInteger := 1.
	portsAsString := self toString: aPortCollection.
	aPortCollection size to: 1 by: -1 do:
		[:i | portsAsInteger := portsAsInteger + (((portsAsString at: i) asciiValue - $0 asciiValue) * (2 raisedTo: (aPortCollection size - i)))].
	^ portsAsInteger