menu creation
createXmlMenu
	^ (EpicMenu new)
		add: 'Print Xml'
			target: self
			selector: #printXml;
		yourself