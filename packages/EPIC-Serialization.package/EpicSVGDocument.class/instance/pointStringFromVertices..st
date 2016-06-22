as yet unclassified
pointStringFromVertices: vertices
	| string |
	string := ''.
	
	vertices do: [ :each |
		string := string, ' ', each x asString, ',', each y asString ].
	^ string withBlanksTrimmed
	