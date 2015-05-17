as yet unclassified
toString: aPortCollection
	| portsAsString |
	portsAsString := String new: aPortCollection size.
	1 to: aPortCollection size do:
		[:i | portsAsString at: i put: (self booleanToCharacter: (aPortCollection at: i))].
	^ portsAsString