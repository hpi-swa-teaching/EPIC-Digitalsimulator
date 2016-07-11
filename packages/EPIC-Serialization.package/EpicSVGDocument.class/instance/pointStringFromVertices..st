as yet unclassified
pointStringFromVertices: vertices
	| string |
	string := ''.
	
	vertices do: [ :each |
		string := string, ' ', each x asFloat asString, ',', each y asFloat asString ].
	^ string withBlanksTrimmed
	