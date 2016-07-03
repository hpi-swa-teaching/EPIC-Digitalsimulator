copy/paste
copySelectedComponents
	|blackbox|
	self selectedComponents ifEmpty: [^self].
	
	blackbox := EpicCustomCircuit new.
	blackbox innerOrigin: self position.
	
	self selectedComponents do: [:eachComponent| 
		blackbox addSubComponent: eachComponent ].	
	
	Clipboard clipboardText: blackbox asXMLDocument asString