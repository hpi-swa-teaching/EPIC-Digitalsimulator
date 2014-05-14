parsing
parseSubCircuitFromFileNamed: aFileName
	| parser |
	parser := EpicCircuitXMLParser new.
	parser 
		when: #componentParsed send: #triggerComponentParsed: to: self;
		when: #wireParsed send: #triggerWireParsed: to: self.
	^ FileStream fileNamed: aFileName do: [:aStream | parser parseStream: aStream]